
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_hashsig ;


 int git__free (int *) ;

void git_hashsig_free(git_hashsig *sig)
{
 git__free(sig);
}
