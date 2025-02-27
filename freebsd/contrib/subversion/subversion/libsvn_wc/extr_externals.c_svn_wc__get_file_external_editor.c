
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int svn_wc_notify_func2_t ;
struct TYPE_13__ {int * db; } ;
typedef TYPE_2__ svn_wc_context_t ;
typedef int svn_wc_conflict_resolver_func2_t ;
typedef int svn_wc__db_t ;
typedef int svn_revnum_t ;
typedef int svn_prop_t ;
struct TYPE_12__ {void* number; } ;
struct TYPE_14__ {scalar_t__ kind; TYPE_1__ value; } ;
typedef TYPE_3__ svn_opt_revision_t ;
typedef int svn_error_t ;
struct TYPE_15__ {int close_edit; int close_file; int change_file_prop; int apply_textdelta; int open_file; int add_file; int set_target_revision; int open_root; } ;
typedef TYPE_4__ svn_delta_editor_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
struct edit_baton {char const* repos_root_url; char const* diff3cmd; int propchanges; void* notify_baton; int notify_func; void* cancel_baton; int cancel_func; void* conflict_baton; int conflict_func; void* recorded_revision; void* recorded_peg_revision; void* changed_rev; void* recorded_repos_relpath; void* record_ancestor_abspath; int const* ext_patterns; int use_commit_times; int * iprops; void* original_revision; void* new_repos_relpath; void* old_repos_relpath; void* repos_uuid; int * target_revision; void* local_abspath; int name; void* wri_abspath; int * db; int * pool; } ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 void* SVN_INVALID_REVNUM ;
 int add_file ;
 int apply_textdelta ;
 int apr_array_make (int *,int,int) ;
 struct edit_baton* apr_pcalloc (int *,int) ;
 void* apr_pstrdup (int *,char const*) ;
 int change_file_prop ;
 int close_edit ;
 int close_file ;
 int open_file ;
 int open_root ;
 int set_target_revision ;
 TYPE_4__* svn_delta_default_editor (int *) ;
 int * svn_delta_get_cancellation_editor (int ,void*,TYPE_4__*,struct edit_baton*,TYPE_4__ const**,void**,int *) ;
 int svn_dirent_basename (void*,int *) ;
 void* svn_dirent_dirname (char const*,int *) ;
 scalar_t__ svn_opt_revision_number ;
 void* svn_uri_skip_ancestor (char const*,char const*,int *) ;

svn_error_t *
svn_wc__get_file_external_editor(const svn_delta_editor_t **editor,
                                 void **edit_baton,
                                 svn_revnum_t *target_revision,
                                 svn_wc_context_t *wc_ctx,
                                 const char *local_abspath,
                                 const char *wri_abspath,
                                 const char *url,
                                 const char *repos_root_url,
                                 const char *repos_uuid,
                                 apr_array_header_t *iprops,
                                 svn_boolean_t use_commit_times,
                                 const char *diff3_cmd,
                                 const apr_array_header_t *preserved_exts,
                                 const char *record_ancestor_abspath,
                                 const char *recorded_url,
                                 const svn_opt_revision_t *recorded_peg_rev,
                                 const svn_opt_revision_t *recorded_rev,
                                 svn_wc_conflict_resolver_func2_t conflict_func,
                                 void *conflict_baton,
                                 svn_cancel_func_t cancel_func,
                                 void *cancel_baton,
                                 svn_wc_notify_func2_t notify_func,
                                 void *notify_baton,
                                 apr_pool_t *result_pool,
                                 apr_pool_t *scratch_pool)
{
  svn_wc__db_t *db = wc_ctx->db;
  apr_pool_t *edit_pool = result_pool;
  struct edit_baton *eb = apr_pcalloc(edit_pool, sizeof(*eb));
  svn_delta_editor_t *tree_editor = svn_delta_default_editor(edit_pool);

  eb->pool = edit_pool;
  eb->db = db;
  eb->local_abspath = apr_pstrdup(edit_pool, local_abspath);
  if (wri_abspath)
    eb->wri_abspath = apr_pstrdup(edit_pool, wri_abspath);
  else
    eb->wri_abspath = svn_dirent_dirname(local_abspath, edit_pool);
  eb->name = svn_dirent_basename(eb->local_abspath, ((void*)0));
  eb->target_revision = target_revision;

  eb->repos_root_url = apr_pstrdup(edit_pool, repos_root_url);
  eb->repos_uuid = apr_pstrdup(edit_pool, repos_uuid);
  eb->new_repos_relpath = svn_uri_skip_ancestor(eb->repos_root_url, url, edit_pool);
  eb->old_repos_relpath = eb->new_repos_relpath;

  eb->original_revision = SVN_INVALID_REVNUM;

  eb->iprops = iprops;

  eb->use_commit_times = use_commit_times;
  eb->ext_patterns = preserved_exts;
  eb->diff3cmd = diff3_cmd;

  eb->record_ancestor_abspath = apr_pstrdup(edit_pool,record_ancestor_abspath);
  eb->recorded_repos_relpath = svn_uri_skip_ancestor(repos_root_url, recorded_url,
                                                     edit_pool);

  eb->changed_rev = SVN_INVALID_REVNUM;

  if (recorded_peg_rev->kind == svn_opt_revision_number)
    eb->recorded_peg_revision = recorded_peg_rev->value.number;
  else
    eb->recorded_peg_revision = SVN_INVALID_REVNUM;

  if (recorded_rev->kind == svn_opt_revision_number)
    eb->recorded_revision = recorded_rev->value.number;
  else
    eb->recorded_revision = SVN_INVALID_REVNUM;

  eb->conflict_func = conflict_func;
  eb->conflict_baton = conflict_baton;
  eb->cancel_func = cancel_func;
  eb->cancel_baton = cancel_baton;
  eb->notify_func = notify_func;
  eb->notify_baton = notify_baton;

  eb->propchanges = apr_array_make(edit_pool, 1, sizeof(svn_prop_t));

  tree_editor->open_root = open_root;
  tree_editor->set_target_revision = set_target_revision;
  tree_editor->add_file = add_file;
  tree_editor->open_file = open_file;
  tree_editor->apply_textdelta = apply_textdelta;
  tree_editor->change_file_prop = change_file_prop;
  tree_editor->close_file = close_file;
  tree_editor->close_edit = close_edit;

  return svn_delta_get_cancellation_editor(cancel_func, cancel_baton,
                                           tree_editor, eb,
                                           editor, edit_baton,
                                           result_pool);
}
