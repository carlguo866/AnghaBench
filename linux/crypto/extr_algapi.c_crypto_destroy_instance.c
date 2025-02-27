
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_template {int dummy; } ;
struct crypto_instance {struct crypto_template* tmpl; } ;
struct crypto_alg {int dummy; } ;


 int crypto_free_instance (struct crypto_instance*) ;
 int crypto_tmpl_put (struct crypto_template*) ;

__attribute__((used)) static void crypto_destroy_instance(struct crypto_alg *alg)
{
 struct crypto_instance *inst = (void *)alg;
 struct crypto_template *tmpl = inst->tmpl;

 crypto_free_instance(inst);
 crypto_tmpl_put(tmpl);
}
