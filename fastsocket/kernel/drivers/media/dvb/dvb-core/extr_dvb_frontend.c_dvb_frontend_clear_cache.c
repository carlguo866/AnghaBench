
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int isdbt_partial_reception; int isdbt_sb_mode; int isdbt_sb_subchannel; int isdbt_sb_segment_idx; int isdbt_sb_segment_count; int isdbt_layer_enabled; TYPE_1__* layer; void* code_rate_LP; void* code_rate_HP; void* symbol_rate; int hierarchy; int guard_interval; int bandwidth_hz; int transmission_mode; void* fec_inner; int inversion; int delivery_system; int state; } ;
struct dvb_frontend {TYPE_2__ dtv_property_cache; } ;
struct dtv_frontend_properties {int dummy; } ;
struct TYPE_3__ {int interleaving; int segment_count; void* modulation; void* fec; } ;


 int BANDWIDTH_AUTO ;
 int DTV_CLEAR ;
 void* FEC_AUTO ;
 int GUARD_INTERVAL_AUTO ;
 int HIERARCHY_AUTO ;
 int INVERSION_AUTO ;
 void* QAM_AUTO ;
 int SYS_UNDEFINED ;
 int TRANSMISSION_MODE_AUTO ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static int dvb_frontend_clear_cache(struct dvb_frontend *fe)
{
 int i;

 memset(&(fe->dtv_property_cache), 0,
   sizeof(struct dtv_frontend_properties));

 fe->dtv_property_cache.state = DTV_CLEAR;
 fe->dtv_property_cache.delivery_system = SYS_UNDEFINED;
 fe->dtv_property_cache.inversion = INVERSION_AUTO;
 fe->dtv_property_cache.fec_inner = FEC_AUTO;
 fe->dtv_property_cache.transmission_mode = TRANSMISSION_MODE_AUTO;
 fe->dtv_property_cache.bandwidth_hz = BANDWIDTH_AUTO;
 fe->dtv_property_cache.guard_interval = GUARD_INTERVAL_AUTO;
 fe->dtv_property_cache.hierarchy = HIERARCHY_AUTO;
 fe->dtv_property_cache.symbol_rate = QAM_AUTO;
 fe->dtv_property_cache.code_rate_HP = FEC_AUTO;
 fe->dtv_property_cache.code_rate_LP = FEC_AUTO;

 fe->dtv_property_cache.isdbt_partial_reception = -1;
 fe->dtv_property_cache.isdbt_sb_mode = -1;
 fe->dtv_property_cache.isdbt_sb_subchannel = -1;
 fe->dtv_property_cache.isdbt_sb_segment_idx = -1;
 fe->dtv_property_cache.isdbt_sb_segment_count = -1;
 fe->dtv_property_cache.isdbt_layer_enabled = 0x7;
 for (i = 0; i < 3; i++) {
  fe->dtv_property_cache.layer[i].fec = FEC_AUTO;
  fe->dtv_property_cache.layer[i].modulation = QAM_AUTO;
  fe->dtv_property_cache.layer[i].interleaving = -1;
  fe->dtv_property_cache.layer[i].segment_count = -1;
 }

 return 0;
}
