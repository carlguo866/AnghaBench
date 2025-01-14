
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_9__ ;
typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_14__ ;
typedef struct TYPE_19__ TYPE_13__ ;
typedef struct TYPE_18__ TYPE_12__ ;
typedef struct TYPE_17__ TYPE_11__ ;
typedef struct TYPE_16__ TYPE_10__ ;


typedef int uint16_t ;
struct TYPE_29__ {int entries_len; TYPE_8__* entries; } ;
struct TYPE_23__ {int shift; int multiplier; } ;
struct TYPE_16__ {int cc_sw_cong_setting_threshold; int cc_sw_cong_setting_credit_starvation_threshold; TYPE_9__ cc_cct; TYPE_6__* cc_ca_cong_entries; int cc_ca_cong_setting_control_map; int cc_ca_cong_setting_port_control; int cc_sw_cong_setting_marking_rate; TYPE_3__ cc_sw_cong_setting_credit_starvation_return_delay; int cc_sw_cong_setting_packet_size; int cc_sw_cong_setting_credit_mask; int cc_sw_cong_setting_victim_mask; int cc_sw_cong_setting_control_map; } ;
typedef TYPE_10__ osm_subn_opt_t ;
struct TYPE_17__ {TYPE_2__* p_subn; } ;
typedef TYPE_11__ osm_sm_t ;
struct TYPE_25__ {TYPE_13__* entry_list; int control_map; int port_control; } ;
struct TYPE_24__ {int threshold_resv; int marking_rate; void* cs_return_delay; void* cs_threshold_resv; int packet_size; int credit_mask; int victim_mask; int control_map; } ;
struct TYPE_18__ {int cc_tbl_mads; TYPE_7__* cc_tbl; TYPE_5__ ca_cong_setting; TYPE_4__ sw_cong_setting; } ;
typedef TYPE_12__ osm_congestion_control_t ;
struct TYPE_19__ {scalar_t__ resv1; scalar_t__ resv0; int ccti_min; int trigger_threshold; int ccti_increase; int ccti_timer; } ;
typedef TYPE_13__ ib_ca_cong_entry_t ;
struct TYPE_28__ {int shift; int multiplier; } ;
struct TYPE_27__ {TYPE_14__* entry_list; scalar_t__ resv; void* ccti_limit; } ;
struct TYPE_26__ {int ccti_min; int trigger_threshold; int ccti_increase; int ccti_timer; } ;
struct TYPE_22__ {TYPE_10__ opt; TYPE_1__* p_osm; } ;
struct TYPE_21__ {TYPE_12__ cc; } ;
struct TYPE_20__ {void* shift_multiplier; } ;


 int CL_ASSERT (int) ;
 int IB_CA_CONG_ENTRY_DATA_SIZE ;
 int IB_CC_PORT_MASK_DATA_SIZE ;
 int IB_CC_TBL_ENTRY_LIST_MAX ;
 int OSM_CCT_ENTRY_MAD_BLOCKS ;
 void* cl_hton16 (int) ;
 int memcpy (int ,int ,int ) ;
 int memset (TYPE_14__*,char,int) ;

__attribute__((used)) static void cc_setup_mad_data(osm_sm_t * p_sm)
{
 osm_congestion_control_t *p_cc = &p_sm->p_subn->p_osm->cc;
 osm_subn_opt_t *p_opt = &p_sm->p_subn->opt;
 uint16_t ccti_limit;
 int i;


 p_cc->sw_cong_setting.control_map = p_opt->cc_sw_cong_setting_control_map;

 memcpy(p_cc->sw_cong_setting.victim_mask,
        p_opt->cc_sw_cong_setting_victim_mask,
        IB_CC_PORT_MASK_DATA_SIZE);

 memcpy(p_cc->sw_cong_setting.credit_mask,
        p_opt->cc_sw_cong_setting_credit_mask,
        IB_CC_PORT_MASK_DATA_SIZE);


 p_cc->sw_cong_setting.threshold_resv = (p_opt->cc_sw_cong_setting_threshold << 4);

 p_cc->sw_cong_setting.packet_size = p_opt->cc_sw_cong_setting_packet_size;


 p_cc->sw_cong_setting.cs_threshold_resv =
  cl_hton16(p_opt->cc_sw_cong_setting_credit_starvation_threshold << 12);

 p_cc->sw_cong_setting.cs_return_delay =
  cl_hton16(p_opt->cc_sw_cong_setting_credit_starvation_return_delay.shift << 14
     | p_opt->cc_sw_cong_setting_credit_starvation_return_delay.multiplier);

 p_cc->sw_cong_setting.marking_rate = p_opt->cc_sw_cong_setting_marking_rate;


 p_cc->ca_cong_setting.port_control = p_opt->cc_ca_cong_setting_port_control;
 p_cc->ca_cong_setting.control_map = p_opt->cc_ca_cong_setting_control_map;

 for (i = 0; i < IB_CA_CONG_ENTRY_DATA_SIZE; i++) {
  ib_ca_cong_entry_t *p_entry;

  p_entry = &p_cc->ca_cong_setting.entry_list[i];

  p_entry->ccti_timer = p_opt->cc_ca_cong_entries[i].ccti_timer;
  p_entry->ccti_increase = p_opt->cc_ca_cong_entries[i].ccti_increase;
  p_entry->trigger_threshold = p_opt->cc_ca_cong_entries[i].trigger_threshold;
  p_entry->ccti_min = p_opt->cc_ca_cong_entries[i].ccti_min;
  p_entry->resv0 = 0;
  p_entry->resv1 = 0;
 }




 if (!p_opt->cc_cct.entries_len)
  p_cc->cc_tbl_mads = 1;
 else {
  p_cc->cc_tbl_mads = p_opt->cc_cct.entries_len - 1;
  p_cc->cc_tbl_mads /= IB_CC_TBL_ENTRY_LIST_MAX;
  p_cc->cc_tbl_mads += 1;
 }

 CL_ASSERT(p_cc->cc_tbl_mads <= OSM_CCT_ENTRY_MAD_BLOCKS);

 if (!p_opt->cc_cct.entries_len)
  ccti_limit = 0;
 else
  ccti_limit = p_opt->cc_cct.entries_len - 1;

 for (i = 0; i < p_cc->cc_tbl_mads; i++) {
  int j;

  p_cc->cc_tbl[i].ccti_limit = cl_hton16(ccti_limit);
  p_cc->cc_tbl[i].resv = 0;

  memset(p_cc->cc_tbl[i].entry_list,
         '\0',
         sizeof(p_cc->cc_tbl[i].entry_list));

  if (!ccti_limit)
   break;

  for (j = 0; j < IB_CC_TBL_ENTRY_LIST_MAX; j++) {
   int k;

   k = (i * IB_CC_TBL_ENTRY_LIST_MAX) + j;
   p_cc->cc_tbl[i].entry_list[j].shift_multiplier =
    cl_hton16(p_opt->cc_cct.entries[k].shift << 14
       | p_opt->cc_cct.entries[k].multiplier);
  }
 }
}
