
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int svn_fs_x__invalidate_revprop_generation (int *) ;

__attribute__((used)) static svn_error_t *
x_refresh_revprops(svn_fs_t *fs,
                   apr_pool_t *scratch_pool)
{
  svn_fs_x__invalidate_revprop_generation(fs);
  return SVN_NO_ERROR;
}
