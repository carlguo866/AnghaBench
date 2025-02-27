
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ipu3_uapi_obgrid_param {int dummy; } ;
struct TYPE_6__ {unsigned int num_stripes; } ;
struct TYPE_7__ {int max_height; int max_width; } ;
struct TYPE_8__ {TYPE_1__ iterator; TYPE_2__ internal; } ;
struct TYPE_9__ {TYPE_3__ sp; } ;
struct TYPE_10__ {TYPE_4__ isp; } ;
struct imgu_fw_info {TYPE_5__ info; } ;


 unsigned int ALIGN (unsigned int,int) ;
 int DIV_ROUND_UP (int ,int) ;
 int IMGU_OBGRID_TILE_SIZE ;
 int IPU3_UAPI_ISP_VEC_ELEMS ;
 unsigned int PAGE_ALIGN (unsigned int) ;

unsigned int imgu_css_fw_obgrid_size(const struct imgu_fw_info *bi)
{
 unsigned int width = DIV_ROUND_UP(bi->info.isp.sp.internal.max_width,
       IMGU_OBGRID_TILE_SIZE * 2) + 1;
 unsigned int height = DIV_ROUND_UP(bi->info.isp.sp.internal.max_height,
        IMGU_OBGRID_TILE_SIZE * 2) + 1;
 unsigned int obgrid_size;

 width = ALIGN(width, IPU3_UAPI_ISP_VEC_ELEMS / 4);
 obgrid_size = PAGE_ALIGN(width * height *
     sizeof(struct ipu3_uapi_obgrid_param)) *
     bi->info.isp.sp.iterator.num_stripes;
 return obgrid_size;
}
