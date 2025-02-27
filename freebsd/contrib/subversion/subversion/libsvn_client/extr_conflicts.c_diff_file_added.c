
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_diff_source_t ;
struct svn_diff_tree_processor_t {struct merge_newly_added_dir_baton* baton; } ;
struct merge_newly_added_dir_baton {TYPE_1__* ctx; int merge_right_rev; int merge_left_rev; int added_repos_relpath; int repos_uuid; int repos_root_url; int target_abspath; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;
struct TYPE_2__ {int notify_baton2; int notify_func2; int wc_ctx; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int merge_added_files (char const*,char const*,int ,TYPE_1__*,int *) ;
 int raise_tree_conflict (char const*,int ,int ,scalar_t__,scalar_t__,scalar_t__,int ,int ,int ,int ,int ,int ,int ,int ,int *) ;
 int svn_categorize_props (int *,int *,int *,int **,int *) ;
 char* svn_dirent_join (int ,char const*,int *) ;
 int svn_io_check_path (char const*,scalar_t__*,int *) ;
 int svn_io_copy_file (char const*,char const*,int ,int *) ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_node_none ;
 scalar_t__ svn_node_unknown ;
 int svn_prop_array_to_hash (int *,int *) ;
 int * svn_prop_hash_to_array (int *,int *) ;
 int svn_relpath_join (int ,char const*,int *) ;
 int svn_wc_add_from_disk3 (int ,char const*,int ,int ,int ,int ,int *) ;
 int svn_wc_conflict_action_add ;
 int svn_wc_conflict_reason_obstructed ;
 int svn_wc_read_kind2 (scalar_t__*,int ,char const*,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
diff_file_added(const char *relpath,
                const svn_diff_source_t *copyfrom_source,
                const svn_diff_source_t *right_source,
                const char *copyfrom_file,
                const char *right_file,
                apr_hash_t *copyfrom_props,
                apr_hash_t *right_props,
                void *file_baton,
                const struct svn_diff_tree_processor_t *processor,
                apr_pool_t *scratch_pool)
{
  struct merge_newly_added_dir_baton *b = processor->baton;
  const char *local_abspath;
  svn_node_kind_t db_kind;
  svn_node_kind_t on_disk_kind;
  apr_array_header_t *propsarray;
  apr_array_header_t *regular_props;

  local_abspath = svn_dirent_join(b->target_abspath, relpath, scratch_pool);

  SVN_ERR(svn_wc_read_kind2(&db_kind, b->ctx->wc_ctx, local_abspath,
                            FALSE, FALSE, scratch_pool));
  SVN_ERR(svn_io_check_path(local_abspath, &on_disk_kind, scratch_pool));

  if (db_kind == svn_node_file && on_disk_kind == svn_node_file)
    {
      propsarray = svn_prop_hash_to_array(right_props, scratch_pool);
      SVN_ERR(svn_categorize_props(propsarray, ((void*)0), ((void*)0), &regular_props,
                                   scratch_pool));
      SVN_ERR(merge_added_files(local_abspath, right_file,
                                svn_prop_array_to_hash(regular_props,
                                                       scratch_pool),
                                b->ctx, scratch_pool));
      return SVN_NO_ERROR;
    }

  if (db_kind != svn_node_none && db_kind != svn_node_unknown)
    {
      SVN_ERR(raise_tree_conflict(
                local_abspath, svn_wc_conflict_action_add,
                svn_wc_conflict_reason_obstructed,
                db_kind, svn_node_none, svn_node_file,
                b->repos_root_url, b->repos_uuid,
                svn_relpath_join(b->added_repos_relpath, relpath, scratch_pool),
                b->merge_left_rev, b->merge_right_rev,
                b->ctx->wc_ctx, b->ctx->notify_func2, b->ctx->notify_baton2,
                scratch_pool));
      return SVN_NO_ERROR;
    }

  if (on_disk_kind != svn_node_none)
    {
      SVN_ERR(raise_tree_conflict(
                local_abspath, svn_wc_conflict_action_add,
                svn_wc_conflict_reason_obstructed, db_kind,
                svn_node_none, svn_node_file, b->repos_root_url, b->repos_uuid,
                svn_relpath_join(b->added_repos_relpath, relpath, scratch_pool),
                b->merge_left_rev, b->merge_right_rev,
                b->ctx->wc_ctx, b->ctx->notify_func2, b->ctx->notify_baton2,
                scratch_pool));
      return SVN_NO_ERROR;
    }

  propsarray = svn_prop_hash_to_array(right_props, scratch_pool);
  SVN_ERR(svn_categorize_props(propsarray, ((void*)0), ((void*)0), &regular_props,
                               scratch_pool));
  SVN_ERR(svn_io_copy_file(right_file, local_abspath, FALSE, scratch_pool));
  SVN_ERR(svn_wc_add_from_disk3(b->ctx->wc_ctx, local_abspath,
                                svn_prop_array_to_hash(regular_props,
                                                       scratch_pool),
                                FALSE, b->ctx->notify_func2,
                                b->ctx->notify_baton2, scratch_pool));

  return SVN_NO_ERROR;
}
