
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_function_instance {int group; int free_func_inst; } ;
struct net_device {int dummy; } ;
struct f_phonet_opts {struct usb_function_instance func_inst; struct net_device* net; } ;


 int ENOMEM ;
 struct usb_function_instance* ERR_CAST (struct net_device*) ;
 struct usb_function_instance* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct net_device*) ;
 int config_group_init_type_name (int *,char*,int *) ;
 struct net_device* gphonet_setup_default () ;
 int kfree (struct f_phonet_opts*) ;
 struct f_phonet_opts* kzalloc (int,int ) ;
 int phonet_free_inst ;
 int phonet_func_type ;

__attribute__((used)) static struct usb_function_instance *phonet_alloc_inst(void)
{
 struct f_phonet_opts *opts;

 opts = kzalloc(sizeof(*opts), GFP_KERNEL);
 if (!opts)
  return ERR_PTR(-ENOMEM);

 opts->func_inst.free_func_inst = phonet_free_inst;
 opts->net = gphonet_setup_default();
 if (IS_ERR(opts->net)) {
  struct net_device *net = opts->net;
  kfree(opts);
  return ERR_CAST(net);
 }

 config_group_init_type_name(&opts->func_inst.group, "",
   &phonet_func_type);

 return &opts->func_inst;
}
