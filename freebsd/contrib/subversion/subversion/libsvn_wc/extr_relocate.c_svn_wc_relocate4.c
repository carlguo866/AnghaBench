
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int (* svn_wc_relocation_validator3_t ) (void*,char const*,char const*,char const*,int *) ;
struct TYPE_4__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_CLIENT_INVALID_RELOCATION ;
 int SVN_ERR_WC_INVALID_OP_ON_CWD ;
 int SVN_ERR_WC_INVALID_RELOCATION ;
 int SVN_VA_NULL ;
 int _ (char*) ;
 char* apr_pstrcat (int *,char const*,char const*,int ) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,size_t) ;
 char const* svn_dirent_local_style (char const*,int *) ;
 int svn_error_clear (int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_createf (int ,int *,int ,char const*,...) ;
 int * svn_error_trace (int ) ;
 scalar_t__ svn_node_dir ;
 int svn_path_is_url (char const*) ;
 char* svn_path_url_add_component2 (char const*,char const*,int *) ;
 int * svn_wc__db_get_wcroot (char const**,int ,char const*,int *,int *) ;
 int svn_wc__db_global_relocate (int ,char const*,char const*,int *) ;
 int svn_wc__db_read_info (int *,scalar_t__*,int *,char const**,char const**,char const**,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int ,char const*,int *,int *) ;
 int svn_wc__is_wcroot (int *,TYPE_1__*,char const*,int *) ;
 char* url_remove_final_relpath (char const*,char const*,int *,int *) ;

svn_error_t *
svn_wc_relocate4(svn_wc_context_t *wc_ctx,
                 const char *local_abspath,
                 const char *from,
                 const char *to,
                 svn_wc_relocation_validator3_t validator,
                 void *validator_baton,
                 apr_pool_t *scratch_pool)
{
  svn_node_kind_t kind;
  const char *repos_relpath;
  const char *old_repos_root, *old_url;
  const char *new_repos_root, *new_url;
  size_t from_len;
  size_t old_url_len;
  const char *uuid;
  svn_boolean_t is_wc_root;

  SVN_ERR(svn_wc__is_wcroot(&is_wc_root, wc_ctx, local_abspath,
                            scratch_pool));
  if (! is_wc_root)
    {
      const char *wcroot_abspath;
      svn_error_t *err;

      err = svn_wc__db_get_wcroot(&wcroot_abspath, wc_ctx->db,
                                  local_abspath, scratch_pool, scratch_pool);
      if (err)
        {
          svn_error_clear(err);
          return svn_error_createf(
            SVN_ERR_WC_INVALID_OP_ON_CWD, ((void*)0),
            _("Cannot relocate '%s' as it is not the root of a working copy"),
            svn_dirent_local_style(local_abspath, scratch_pool));
        }
      else
        {
          return svn_error_createf(
            SVN_ERR_WC_INVALID_OP_ON_CWD, ((void*)0),
            _("Cannot relocate '%s' as it is not the root of a working copy; "
              "try relocating '%s' instead"),
            svn_dirent_local_style(local_abspath, scratch_pool),
            svn_dirent_local_style(wcroot_abspath, scratch_pool));
        }
    }

  SVN_ERR(svn_wc__db_read_info(((void*)0), &kind, ((void*)0), &repos_relpath,
                               &old_repos_root, &uuid,
                               ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                               ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                               ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                               ((void*)0), ((void*)0), ((void*)0),
                               wc_ctx->db, local_abspath, scratch_pool,
                               scratch_pool));

  if (kind != svn_node_dir)
    return svn_error_create(SVN_ERR_CLIENT_INVALID_RELOCATION, ((void*)0),
                            _("Cannot relocate a single file"));

  old_url = svn_path_url_add_component2(old_repos_root, repos_relpath,
                                        scratch_pool);
  old_url_len = strlen(old_url);
  from_len = strlen(from);
  if ((from_len > old_url_len) || (strncmp(old_url, from, strlen(from)) != 0))
    return svn_error_createf(SVN_ERR_WC_INVALID_RELOCATION, ((void*)0),
                             _("Invalid source URL prefix: '%s' (does not "
                               "overlap target's URL '%s')"),
                             from, old_url);

  if (old_url_len == from_len)
    new_url = to;
  else
    new_url = apr_pstrcat(scratch_pool, to, old_url + from_len, SVN_VA_NULL);
  if (! svn_path_is_url(new_url))
    return svn_error_createf(SVN_ERR_WC_INVALID_RELOCATION, ((void*)0),
                             _("Invalid relocation destination: '%s' "
                               "(not a URL)"), new_url);

  new_repos_root = url_remove_final_relpath(new_url, repos_relpath,
                                            scratch_pool, scratch_pool);
  if (!new_repos_root)
    return svn_error_createf(SVN_ERR_WC_INVALID_RELOCATION, ((void*)0),
                             _("Invalid relocation destination: '%s' "
                               "(does not point to target)" ), new_url);

  SVN_ERR(validator(validator_baton, uuid, new_url, new_repos_root,
                    scratch_pool));

  return svn_error_trace(svn_wc__db_global_relocate(wc_ctx->db, local_abspath,
                                                    new_repos_root,
                                                    scratch_pool));
}
