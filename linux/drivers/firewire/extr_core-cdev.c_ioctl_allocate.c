
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct fw_cdev_allocate {int handle; scalar_t__ offset; int closure; scalar_t__ length; scalar_t__ region_end; } ;
union ioctl_arg {struct fw_cdev_allocate allocate; } ;
struct fw_address_region {scalar_t__ end; scalar_t__ start; } ;
struct client {scalar_t__ version; } ;
struct TYPE_4__ {int handle; int (* release ) (struct client*,TYPE_1__*) ;} ;
struct TYPE_5__ {scalar_t__ offset; struct address_handler_resource* callback_data; int address_callback; scalar_t__ length; } ;
struct address_handler_resource {TYPE_1__ resource; TYPE_2__ handler; struct client* client; int closure; } ;


 int ENOMEM ;
 scalar_t__ FW_CDEV_VERSION_ALLOCATE_REGION_END ;
 int GFP_KERNEL ;
 int add_client_resource (struct client*,TYPE_1__*,int ) ;
 int fw_core_add_address_handler (TYPE_2__*,struct fw_address_region*) ;
 int handle_request ;
 int kfree (struct address_handler_resource*) ;
 struct address_handler_resource* kmalloc (int,int ) ;
 int release_address_handler (struct client*,TYPE_1__*) ;

__attribute__((used)) static int ioctl_allocate(struct client *client, union ioctl_arg *arg)
{
 struct fw_cdev_allocate *a = &arg->allocate;
 struct address_handler_resource *r;
 struct fw_address_region region;
 int ret;

 r = kmalloc(sizeof(*r), GFP_KERNEL);
 if (r == ((void*)0))
  return -ENOMEM;

 region.start = a->offset;
 if (client->version < FW_CDEV_VERSION_ALLOCATE_REGION_END)
  region.end = a->offset + a->length;
 else
  region.end = a->region_end;

 r->handler.length = a->length;
 r->handler.address_callback = handle_request;
 r->handler.callback_data = r;
 r->closure = a->closure;
 r->client = client;

 ret = fw_core_add_address_handler(&r->handler, &region);
 if (ret < 0) {
  kfree(r);
  return ret;
 }
 a->offset = r->handler.offset;

 r->resource.release = release_address_handler;
 ret = add_client_resource(client, &r->resource, GFP_KERNEL);
 if (ret < 0) {
  release_address_handler(client, &r->resource);
  return ret;
 }
 a->handle = r->resource.handle;

 return 0;
}
