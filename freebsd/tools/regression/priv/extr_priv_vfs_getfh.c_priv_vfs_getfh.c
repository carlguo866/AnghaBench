
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;
typedef int fhandle_t ;


 int EPERM ;
 int expect (char*,int,int,int ) ;
 int fpath ;
 int getfh (int ,int *) ;

void
priv_vfs_getfh(int asroot, int injail, struct test *test)
{
 fhandle_t fh;
 int error;

 error = getfh(fpath, &fh);
 if (asroot && injail)
  expect("priv_vfs_getfh(asroot, injail)", error, -1, EPERM);
 if (asroot && !injail)
  expect("priv_vfs_getfh(asroot, !injail)", error, 0, 0);
 if (!asroot && injail)
  expect("priv_vfs_getfh(!asroot, injail)", error, -1, EPERM);
 if (!asroot && !injail)
  expect("priv_vfs_getfh(!asroot, !injail)", error, -1, EPERM);
}
