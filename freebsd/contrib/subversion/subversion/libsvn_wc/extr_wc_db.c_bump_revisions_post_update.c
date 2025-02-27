
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int svn_wc_notify_func2_t ;
struct TYPE_17__ {int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
typedef int svn_wc__db_status_t ;
typedef int svn_revnum_t ;
typedef int svn_node_kind_t ;
struct TYPE_18__ {scalar_t__ apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int INVALID_REPOS_ID ;
 int SVN_ERR (TYPE_2__*) ;
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ;
 int SVN_INVALID_REVNUM ;
 TYPE_2__* SVN_NO_ERROR ;
 int TRUE ;
 TYPE_2__* bump_node_revision (TYPE_1__*,char const*,int,int ,int ,char const*,int ,char const*,int ,int ,int *,int *,int ,int ,int *,int *) ;
 TYPE_2__* create_repos_id (int *,char const*,char const*,int ,int *) ;
 int svn_error_clear (TYPE_2__*) ;
 TYPE_2__* svn_wc__db_base_get_info_internal (int*,int *,int *,char const**,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,TYPE_1__*,char const*,int *,int *) ;
 TYPE_2__* svn_wc__db_bump_moved_away (TYPE_1__*,char const*,int ,int *,int *) ;



 TYPE_2__* svn_wc__db_update_move_list_notify (TYPE_1__*,int ,int ,int ,void*,int *) ;

__attribute__((used)) static svn_error_t *
bump_revisions_post_update(svn_wc__db_wcroot_t *wcroot,
                           const char *local_relpath,
                           svn_wc__db_t *db,
                           svn_depth_t depth,
                           const char *new_repos_relpath,
                           const char *new_repos_root_url,
                           const char *new_repos_uuid,
                           svn_revnum_t new_revision,
                           apr_hash_t *exclude_relpaths,
                           apr_hash_t *wcroot_iprops,
                           svn_boolean_t empty_update,
                           svn_wc_notify_func2_t notify_func,
                           void *notify_baton,
                           apr_pool_t *scratch_pool)
{
  svn_wc__db_status_t status;
  svn_node_kind_t kind;
  svn_error_t *err;
  apr_int64_t new_repos_id = INVALID_REPOS_ID;
  svn_revnum_t revision;
  const char *repos_relpath;

  err = svn_wc__db_base_get_info_internal(&status, &kind, &revision,
                                          &repos_relpath, ((void*)0),
                                          ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                          ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                          wcroot, local_relpath,
                                          scratch_pool, scratch_pool);
  if (err && err->apr_err == SVN_ERR_WC_PATH_NOT_FOUND)
    {
      svn_error_clear(err);
      return SVN_NO_ERROR;
    }
  else
    SVN_ERR(err);

  switch (status)
    {
      case 130:
      case 128:
      case 129:
        return SVN_NO_ERROR;


      default:
        break;
    }

  if (new_repos_root_url != ((void*)0))
    SVN_ERR(create_repos_id(&new_repos_id, new_repos_root_url,
                            new_repos_uuid,
                            wcroot->sdb, scratch_pool));

  SVN_ERR(bump_node_revision(wcroot, local_relpath,
                             status, kind, revision, repos_relpath,
                             new_repos_id,
                             new_repos_relpath, new_revision,
                             depth, exclude_relpaths,
                             wcroot_iprops,
                             TRUE , FALSE, db,
                             scratch_pool));


  SVN_ERR(svn_wc__db_bump_moved_away(wcroot, local_relpath, depth, db,
                                     scratch_pool));

  SVN_ERR(svn_wc__db_update_move_list_notify(wcroot, SVN_INVALID_REVNUM,
                                             SVN_INVALID_REVNUM, notify_func,
                                             notify_baton, scratch_pool));

  return SVN_NO_ERROR;
}
