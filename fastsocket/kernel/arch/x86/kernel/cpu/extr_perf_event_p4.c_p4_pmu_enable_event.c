
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hw_perf_event {int idx; int config_base; int config; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct p4_event_bind {int opcode; scalar_t__* escr_msr; } ;


 int P4_CCCR_ENABLE ;
 int P4_CCCR_RESERVED ;
 int P4_ESCR_EVENT (int ) ;
 int P4_ESCR_EVENT_MASK ;
 int P4_OPCODE_EVNT (int ) ;
 int WARN_ON_ONCE (int) ;
 int checking_wrmsrl (int,int) ;
 int p4_clear_ht_bit (int ) ;
 int p4_config_unpack_cccr (int ) ;
 int p4_config_unpack_escr (int ) ;
 unsigned int p4_config_unpack_event (int ) ;
 struct p4_event_bind* p4_event_bind_map ;
 int p4_ht_config_thread (int ) ;
 int p4_is_event_cascaded (int ) ;
 int p4_pmu_enable_pebs (int ) ;

__attribute__((used)) static void p4_pmu_enable_event(struct perf_event *event)
{
 struct hw_perf_event *hwc = &event->hw;
 int thread = p4_ht_config_thread(hwc->config);
 u64 escr_conf = p4_config_unpack_escr(p4_clear_ht_bit(hwc->config));
 unsigned int idx = p4_config_unpack_event(hwc->config);
 struct p4_event_bind *bind;
 u64 escr_addr, cccr;

 bind = &p4_event_bind_map[idx];
 escr_addr = (u64)bind->escr_msr[thread];





 WARN_ON_ONCE(p4_is_event_cascaded(hwc->config));
 WARN_ON_ONCE(hwc->idx == 1);


 escr_conf &= ~P4_ESCR_EVENT_MASK;
 escr_conf |= P4_ESCR_EVENT(P4_OPCODE_EVNT(bind->opcode));

 cccr = p4_config_unpack_cccr(hwc->config);





 p4_pmu_enable_pebs(hwc->config);

 (void)checking_wrmsrl(escr_addr, escr_conf);
 (void)checking_wrmsrl(hwc->config_base,
    (cccr & ~P4_CCCR_RESERVED) | P4_CCCR_ENABLE);
}
