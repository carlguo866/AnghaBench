
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int cr_label; } ;
typedef int gid_t ;


 int COUNTER_INC (int ) ;
 int LABEL_CHECK (int ,int ) ;
 int MAGIC_CRED ;
 int cred_check_setgroups ;

__attribute__((used)) static int
test_cred_check_setgroups(struct ucred *cred, int ngroups,
 gid_t *gidset)
{

 LABEL_CHECK(cred->cr_label, MAGIC_CRED);
 COUNTER_INC(cred_check_setgroups);

 return (0);
}
