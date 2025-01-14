
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct wm_adsp_compr_buf {TYPE_3__* regions; TYPE_2__* dsp; } ;
struct TYPE_8__ {TYPE_1__* caps; } ;
struct TYPE_7__ {int cumulative_size; } ;
struct TYPE_6__ {size_t fw; } ;
struct TYPE_5__ {int num_regions; } ;


 TYPE_4__* wm_adsp_fw ;

__attribute__((used)) static inline int wm_adsp_buffer_size(struct wm_adsp_compr_buf *buf)
{
 int last_region = wm_adsp_fw[buf->dsp->fw].caps->num_regions - 1;

 return buf->regions[last_region].cumulative_size;
}
