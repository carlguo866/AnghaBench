
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_cred ;


 int GIT_CREDTYPE_SSH_MEMORY ;
 int GIT_ERROR_INVALID ;
 int GIT_UNUSED (char const*) ;
 int git_cred_ssh_key_type_new (int **,char const*,char const*,char const*,char const*,int ) ;
 int git_error_set (int ,char*) ;

int git_cred_ssh_key_memory_new(
 git_cred **cred,
 const char *username,
 const char *publickey,
 const char *privatekey,
 const char *passphrase)
{
 GIT_UNUSED(cred);
 GIT_UNUSED(username);
 GIT_UNUSED(publickey);
 GIT_UNUSED(privatekey);
 GIT_UNUSED(passphrase);

 git_error_set(GIT_ERROR_INVALID,
  "this version of libgit2 was not built with ssh memory credentials.");
 return -1;

}
