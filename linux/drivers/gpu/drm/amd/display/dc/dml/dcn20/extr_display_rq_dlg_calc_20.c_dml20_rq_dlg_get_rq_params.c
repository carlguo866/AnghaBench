
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct display_mode_lib {int dummy; } ;
typedef enum source_format_class { ____Placeholder_source_format_class } source_format_class ;
struct TYPE_14__ {int rq_c; int rq_l; } ;
struct TYPE_13__ {int rq_c; int rq_l; } ;
struct TYPE_12__ {int rq_c; int rq_l; } ;
struct TYPE_15__ {int yuv420; int yuv420_10bpc; TYPE_3__ misc; TYPE_2__ dlg; TYPE_1__ sizing; } ;
typedef TYPE_4__ display_rq_params_st ;
struct TYPE_16__ {scalar_t__ source_format; } ;
typedef TYPE_5__ display_pipe_source_params_st ;


 scalar_t__ dm_420_10 ;
 scalar_t__ dm_420_8 ;
 int get_surf_rq_param (struct display_mode_lib*,int *,int *,int *,TYPE_5__ const,int) ;
 int handle_det_buf_split (struct display_mode_lib*,TYPE_4__*,TYPE_5__ const) ;
 scalar_t__ is_dual_plane (int) ;
 int print__rq_params_st (struct display_mode_lib*,TYPE_4__) ;

__attribute__((used)) static void dml20_rq_dlg_get_rq_params(struct display_mode_lib *mode_lib,
  display_rq_params_st *rq_param,
  const display_pipe_source_params_st pipe_src_param)
{

 rq_param->yuv420 = pipe_src_param.source_format == dm_420_8
   || pipe_src_param.source_format == dm_420_10;
 rq_param->yuv420_10bpc = pipe_src_param.source_format == dm_420_10;

 get_surf_rq_param(mode_lib,
   &(rq_param->sizing.rq_l),
   &(rq_param->dlg.rq_l),
   &(rq_param->misc.rq_l),
   pipe_src_param,
   0);

 if (is_dual_plane((enum source_format_class)(pipe_src_param.source_format))) {

  get_surf_rq_param(mode_lib,
    &(rq_param->sizing.rq_c),
    &(rq_param->dlg.rq_c),
    &(rq_param->misc.rq_c),
    pipe_src_param,
    1);
 }


 handle_det_buf_split(mode_lib, rq_param, pipe_src_param);
 print__rq_params_st(mode_lib, *rq_param);
}
