
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct ceph_crypto_key** data; } ;
struct key_preparsed_payload {size_t datalen; size_t quotalen; TYPE_1__ payload; scalar_t__ data; } ;
struct ceph_crypto_key {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ceph_crypto_key_decode (struct ceph_crypto_key*,void**,char*) ;
 int kfree (struct ceph_crypto_key*) ;
 struct ceph_crypto_key* kmalloc (int,int ) ;

__attribute__((used)) static int ceph_key_preparse(struct key_preparsed_payload *prep)
{
 struct ceph_crypto_key *ckey;
 size_t datalen = prep->datalen;
 int ret;
 void *p;

 ret = -EINVAL;
 if (datalen <= 0 || datalen > 32767 || !prep->data)
  goto err;

 ret = -ENOMEM;
 ckey = kmalloc(sizeof(*ckey), GFP_KERNEL);
 if (!ckey)
  goto err;


 p = (void *)prep->data;
 ret = ceph_crypto_key_decode(ckey, &p, (char*)prep->data+datalen);
 if (ret < 0)
  goto err_ckey;

 prep->payload.data[0] = ckey;
 prep->quotalen = datalen;
 return 0;

err_ckey:
 kfree(ckey);
err:
 return ret;
}
