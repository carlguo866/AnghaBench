
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;

__attribute__((used)) static svn_error_t *
absent_directory(const char *path,
                 void *dir_baton,
                 apr_pool_t *pool)
{






  return SVN_NO_ERROR;
}
