
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t uint64_t ;
struct TYPE_10__ {TYPE_1__* nvs_ops; } ;
typedef TYPE_2__ nvstream_t ;
struct TYPE_11__ {TYPE_5__* nvp_list; } ;
typedef TYPE_3__ nvpriv_t ;
struct TYPE_12__ {scalar_t__ nvl_priv; } ;
typedef TYPE_4__ nvlist_t ;
struct TYPE_13__ {int nvi_nvp; struct TYPE_13__* nvi_next; } ;
typedef TYPE_5__ i_nvp_t ;
struct TYPE_9__ {scalar_t__ (* nvs_nvp_size ) (TYPE_2__*,int *,size_t*) ;} ;


 int EINVAL ;
 size_t INT32_MAX ;
 scalar_t__ stub1 (TYPE_2__*,int *,size_t*) ;

__attribute__((used)) static int
nvs_getsize_pairs(nvstream_t *nvs, nvlist_t *nvl, size_t *buflen)
{
 nvpriv_t *priv = (nvpriv_t *)(uintptr_t)nvl->nvl_priv;
 i_nvp_t *curr;
 uint64_t nvsize = *buflen;
 size_t size;




 for (curr = priv->nvp_list; curr != ((void*)0); curr = curr->nvi_next) {
  if (nvs->nvs_ops->nvs_nvp_size(nvs, &curr->nvi_nvp, &size) != 0)
   return (EINVAL);

  if ((nvsize += size) > INT32_MAX)
   return (EINVAL);
 }

 *buflen = nvsize;
 return (0);
}
