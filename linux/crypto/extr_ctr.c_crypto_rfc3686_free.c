
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_instance {int dummy; } ;
struct crypto_skcipher_spawn {int dummy; } ;


 int crypto_drop_skcipher (struct crypto_skcipher_spawn*) ;
 int kfree (struct skcipher_instance*) ;
 struct crypto_skcipher_spawn* skcipher_instance_ctx (struct skcipher_instance*) ;

__attribute__((used)) static void crypto_rfc3686_free(struct skcipher_instance *inst)
{
 struct crypto_skcipher_spawn *spawn = skcipher_instance_ctx(inst);

 crypto_drop_skcipher(spawn);
 kfree(inst);
}
