
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct channel_subsystem {int cm_enabled; void* cub_addr2; void* cub_addr1; } ;


 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int __chsc_do_secm (struct channel_subsystem*,int) ;
 int chsc_add_cmg_attr (struct channel_subsystem*) ;
 int chsc_remove_cmg_attr (struct channel_subsystem*) ;
 int free_page (unsigned long) ;
 scalar_t__ get_zeroed_page (int) ;

int
chsc_secm(struct channel_subsystem *css, int enable)
{
 int ret;

 if (enable && !css->cm_enabled) {
  css->cub_addr1 = (void *)get_zeroed_page(GFP_KERNEL | GFP_DMA);
  css->cub_addr2 = (void *)get_zeroed_page(GFP_KERNEL | GFP_DMA);
  if (!css->cub_addr1 || !css->cub_addr2) {
   free_page((unsigned long)css->cub_addr1);
   free_page((unsigned long)css->cub_addr2);
   return -ENOMEM;
  }
 }
 ret = __chsc_do_secm(css, enable);
 if (!ret) {
  css->cm_enabled = enable;
  if (css->cm_enabled) {
   ret = chsc_add_cmg_attr(css);
   if (ret) {
    __chsc_do_secm(css, 0);
    css->cm_enabled = 0;
   }
  } else
   chsc_remove_cmg_attr(css);
 }
 if (!css->cm_enabled) {
  free_page((unsigned long)css->cub_addr1);
  free_page((unsigned long)css->cub_addr2);
 }
 return ret;
}
