
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f_fs_opts {int func_inst; } ;
struct config_item {int dummy; } ;


 struct f_fs_opts* to_ffs_opts (struct config_item*) ;
 int usb_put_function_instance (int *) ;

__attribute__((used)) static void ffs_attr_release(struct config_item *item)
{
 struct f_fs_opts *opts = to_ffs_opts(item);

 usb_put_function_instance(&opts->func_inst);
}
