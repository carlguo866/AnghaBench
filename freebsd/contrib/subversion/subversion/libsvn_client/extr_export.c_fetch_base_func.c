
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;

__attribute__((used)) static svn_error_t *
fetch_base_func(const char **filename,
                void *baton,
                const char *path,
                svn_revnum_t base_revision,
                apr_pool_t *result_pool,
                apr_pool_t *scratch_pool)
{

  *filename = ((void*)0);

  return SVN_NO_ERROR;
}
