
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_opt_revision_t ;
typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int * svn_client_propget2 (int **,char const*,char const*,int const*,int const*,int ,int *,int *) ;

svn_error_t *
svn_client_propget(apr_hash_t **props,
                   const char *propname,
                   const char *target,
                   const svn_opt_revision_t *revision,
                   svn_boolean_t recurse,
                   svn_client_ctx_t *ctx,
                   apr_pool_t *pool)
{
  return svn_client_propget2(props, propname, target, revision, revision,
                             recurse, ctx, pool);
}
