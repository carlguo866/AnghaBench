
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alg_spec {char const* alg_string; char* key_string; int key_size; int key; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int free_alg (struct alg_spec*) ;
 scalar_t__ hex2bin (int ,char*,int) ;
 int kmalloc (int,int ) ;
 char const* kstrdup (char*,int ) ;
 char* strchr (char const*,char) ;
 int strlen (char*) ;

__attribute__((used)) static int get_alg_and_key(const char *arg, struct alg_spec *a, char **error, char *error_inval)
{
 char *k;

 free_alg(a);

 a->alg_string = kstrdup(strchr(arg, ':') + 1, GFP_KERNEL);
 if (!a->alg_string)
  goto nomem;

 k = strchr(a->alg_string, ':');
 if (k) {
  *k = 0;
  a->key_string = k + 1;
  if (strlen(a->key_string) & 1)
   goto inval;

  a->key_size = strlen(a->key_string) / 2;
  a->key = kmalloc(a->key_size, GFP_KERNEL);
  if (!a->key)
   goto nomem;
  if (hex2bin(a->key, a->key_string, a->key_size))
   goto inval;
 }

 return 0;
inval:
 *error = error_inval;
 return -EINVAL;
nomem:
 *error = "Out of memory for an argument";
 return -ENOMEM;
}
