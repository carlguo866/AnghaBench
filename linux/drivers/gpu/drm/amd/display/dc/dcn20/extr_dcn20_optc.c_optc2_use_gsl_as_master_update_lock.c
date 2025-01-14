
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timing_generator {int dummy; } ;
struct optc {int dummy; } ;
struct gsl_params {int master_update_lock_gsl_en; } ;


 struct optc* DCN10TG_FROM_TG (struct timing_generator*) ;
 int OTG_GSL_CONTROL ;
 int OTG_MASTER_UPDATE_LOCK_GSL_EN ;
 int REG_UPDATE (int ,int ,int ) ;

void optc2_use_gsl_as_master_update_lock(struct timing_generator *optc,
     const struct gsl_params *params)
{
 struct optc *optc1 = DCN10TG_FROM_TG(optc);

 REG_UPDATE(OTG_GSL_CONTROL,
  OTG_MASTER_UPDATE_LOCK_GSL_EN, params->master_update_lock_gsl_en);
}
