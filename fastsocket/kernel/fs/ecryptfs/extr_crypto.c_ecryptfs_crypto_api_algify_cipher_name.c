
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int GFP_KERNEL ;
 char* kmalloc (int,int ) ;
 int snprintf (char*,int,char*,char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int ecryptfs_crypto_api_algify_cipher_name(char **algified_name,
        char *cipher_name,
        char *chaining_modifier)
{
 int cipher_name_len = strlen(cipher_name);
 int chaining_modifier_len = strlen(chaining_modifier);
 int algified_name_len;
 int rc;

 algified_name_len = (chaining_modifier_len + cipher_name_len + 3);
 (*algified_name) = kmalloc(algified_name_len, GFP_KERNEL);
 if (!(*algified_name)) {
  rc = -ENOMEM;
  goto out;
 }
 snprintf((*algified_name), algified_name_len, "%s(%s)",
   chaining_modifier, cipher_name);
 rc = 0;
out:
 return rc;
}
