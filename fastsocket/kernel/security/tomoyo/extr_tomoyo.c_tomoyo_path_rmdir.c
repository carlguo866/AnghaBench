
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {struct dentry* member_1; int member_0; int mnt; } ;
struct dentry {int dummy; } ;


 int TOMOYO_TYPE_RMDIR_ACL ;
 int tomoyo_check_1path_perm (int ,int ,struct path*) ;
 int tomoyo_domain () ;

__attribute__((used)) static int tomoyo_path_rmdir(struct path *parent, struct dentry *dentry)
{
 struct path path = { parent->mnt, dentry };
 return tomoyo_check_1path_perm(tomoyo_domain(),
           TOMOYO_TYPE_RMDIR_ACL,
           &path);
}
