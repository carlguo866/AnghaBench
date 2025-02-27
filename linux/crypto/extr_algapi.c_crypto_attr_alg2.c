
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtattr {int dummy; } ;
struct crypto_type {int dummy; } ;
struct crypto_alg {int dummy; } ;


 struct crypto_alg* ERR_CAST (char const*) ;
 scalar_t__ IS_ERR (char const*) ;
 char* crypto_attr_alg_name (struct rtattr*) ;
 struct crypto_alg* crypto_find_alg (char const*,struct crypto_type const*,int ,int ) ;

struct crypto_alg *crypto_attr_alg2(struct rtattr *rta,
        const struct crypto_type *frontend,
        u32 type, u32 mask)
{
 const char *name;

 name = crypto_attr_alg_name(rta);
 if (IS_ERR(name))
  return ERR_CAST(name);

 return crypto_find_alg(name, frontend, type, mask);
}
