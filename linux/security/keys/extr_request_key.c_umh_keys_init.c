
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subprocess_info {struct key* data; } ;
struct key {int dummy; } ;
struct cred {int dummy; } ;


 int install_session_keyring_to_cred (struct cred*,struct key*) ;

__attribute__((used)) static int umh_keys_init(struct subprocess_info *info, struct cred *cred)
{
 struct key *keyring = info->data;

 return install_session_keyring_to_cred(cred, keyring);
}
