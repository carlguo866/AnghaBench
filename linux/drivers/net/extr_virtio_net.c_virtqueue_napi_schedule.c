
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {int dummy; } ;
struct napi_struct {int dummy; } ;


 int __napi_schedule (struct napi_struct*) ;
 scalar_t__ napi_schedule_prep (struct napi_struct*) ;
 int virtqueue_disable_cb (struct virtqueue*) ;

__attribute__((used)) static void virtqueue_napi_schedule(struct napi_struct *napi,
        struct virtqueue *vq)
{
 if (napi_schedule_prep(napi)) {
  virtqueue_disable_cb(vq);
  __napi_schedule(napi);
 }
}
