
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ kind; } ;
typedef TYPE_1__ svn_wc_notify_t ;
typedef int (* svn_wc_notify_func2_t ) (void*,TYPE_1__*,int *) ;
typedef int svn_wc__db_t ;
typedef int svn_skel_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_io_dirent2_t ;
typedef int svn_error_t ;
typedef int * (* svn_cancel_func_t ) (void*) ;
typedef int svn_boolean_t ;
struct svn_wc__db_info_t {scalar_t__ status; scalar_t__ kind; int recorded_time; int recorded_size; int conflicted; int file_external; scalar_t__ op_root; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int FALSE ;
 int SVN_ERR (int *) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_NODE_UNEXPECTED_KIND ;
 int SVN_ERR_WC_PATH_UNEXPECTED_STATUS ;
 int SVN_INVALID_FILESIZE ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 scalar_t__ apr_hash_count (int *) ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 struct svn_wc__db_info_t* apr_hash_this_val (int *) ;
 int * copy_to_tmpdir (int **,scalar_t__*,int *,char const*,char const*,char const*,int ,int ,int const*,int ,int ,int * (*) (void*),void*,int *,int *) ;
 int * copy_versioned_file (int *,char const*,char const*,char const*,char const*,int ,int ,int ,int *,int ,int ,int * (*) (void*),void*,int *,int *,int *) ;
 int stub1 (void*,TYPE_1__*,int *) ;
 char* svn_dirent_dirname (char const*,int *) ;
 char* svn_dirent_join (char const*,char const*,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int * svn_hash_gets (int *,char const*) ;
 int svn_hash_sets (int *,char const*,int *) ;
 int * svn_io_get_dirents3 (int **,char const*,int ,int *,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int * svn_wc__db_get_conflict_marker_files (int **,int *,char const*,int *,int *) ;
 int * svn_wc__db_op_copy (int *,char const*,char const*,char const*,int ,int *,int *) ;
 int * svn_wc__db_op_copy_shadowed_layer (int *,char const*,char const*,int ,int *) ;
 int * svn_wc__db_read_children_info (int **,int **,int *,char const*,int ,int *,int *) ;
 scalar_t__ svn_wc__db_status_added ;
 scalar_t__ svn_wc__db_status_deleted ;
 scalar_t__ svn_wc__db_status_excluded ;
 scalar_t__ svn_wc__db_status_incomplete ;
 scalar_t__ svn_wc__db_status_normal ;
 scalar_t__ svn_wc__db_status_not_present ;
 scalar_t__ svn_wc__db_status_server_excluded ;
 int * svn_wc__db_wq_add (int *,char const*,int *,int *) ;
 int * svn_wc__wq_merge (int *,int *,int *) ;
 int * svn_wc__wq_run (int *,char const*,int * (*) (void*),void*,int *) ;
 TYPE_1__* svn_wc_create_notify (char const*,int ,int *) ;
 scalar_t__ svn_wc_is_adm_dir (char const*,int *) ;
 int svn_wc_notify_add ;

__attribute__((used)) static svn_error_t *
copy_versioned_dir(svn_wc__db_t *db,
                   const char *src_abspath,
                   const char *dst_abspath,
                   const char *dst_op_root_abspath,
                   const char *tmpdir_abspath,
                   svn_boolean_t metadata_only,
                   svn_boolean_t is_move,
                   const svn_io_dirent2_t *dirent,
                   svn_cancel_func_t cancel_func,
                   void *cancel_baton,
                   svn_wc_notify_func2_t notify_func,
                   void *notify_baton,
                   apr_pool_t *scratch_pool)
{
  svn_skel_t *work_items = ((void*)0);
  const char *dir_abspath = svn_dirent_dirname(dst_abspath, scratch_pool);
  apr_hash_t *versioned_children;
  apr_hash_t *conflicted_children;
  apr_hash_t *disk_children;
  apr_hash_index_t *hi;
  svn_node_kind_t disk_kind;
  apr_pool_t *iterpool;


  if (!metadata_only)
    {
      SVN_ERR(copy_to_tmpdir(&work_items, &disk_kind,
                             db, src_abspath, dst_abspath,
                             tmpdir_abspath,
                             FALSE ,
                             FALSE ,
                             dirent, SVN_INVALID_FILESIZE, 0,
                             cancel_func, cancel_baton,
                             scratch_pool, scratch_pool));
    }



  SVN_ERR(svn_wc__db_op_copy(db, src_abspath, dst_abspath,
                             dst_op_root_abspath, is_move, work_items,
                             scratch_pool));

  if (notify_func)
    {
      svn_wc_notify_t *notify
        = svn_wc_create_notify(dst_abspath, svn_wc_notify_add,
                               scratch_pool);
      notify->kind = svn_node_dir;


      if (work_items != ((void*)0))
        SVN_ERR(svn_wc__wq_run(db, dir_abspath,
                               cancel_func, cancel_baton, scratch_pool));

      (*notify_func)(notify_baton, notify, scratch_pool);
    }

  if (!metadata_only && disk_kind == svn_node_dir)



    SVN_ERR(svn_io_get_dirents3(&disk_children, src_abspath, TRUE,
                                scratch_pool, scratch_pool));
  else
    disk_children = ((void*)0);


  iterpool = svn_pool_create(scratch_pool);
  SVN_ERR(svn_wc__db_read_children_info(&versioned_children,
                                        &conflicted_children,
                                        db, src_abspath,
                                        FALSE ,
                                        scratch_pool, iterpool));
  for (hi = apr_hash_first(scratch_pool, versioned_children);
       hi;
       hi = apr_hash_next(hi))
    {
      const char *child_name, *child_src_abspath, *child_dst_abspath;
      struct svn_wc__db_info_t *info;

      svn_pool_clear(iterpool);

      if (cancel_func)
        SVN_ERR(cancel_func(cancel_baton));

      child_name = apr_hash_this_key(hi);
      info = apr_hash_this_val(hi);
      child_src_abspath = svn_dirent_join(src_abspath, child_name, iterpool);
      child_dst_abspath = svn_dirent_join(dst_abspath, child_name, iterpool);

      if (info->op_root)
        SVN_ERR(svn_wc__db_op_copy_shadowed_layer(db,
                                                  child_src_abspath,
                                                  child_dst_abspath,
                                                  is_move,
                                                  scratch_pool));

      if (info->status == svn_wc__db_status_normal
          || info->status == svn_wc__db_status_added)
        {

          if (info->kind == svn_node_file)
            {


              if (!info->file_external)
                SVN_ERR(copy_versioned_file(db,
                                            child_src_abspath,
                                            child_dst_abspath,
                                            dst_op_root_abspath,
                                            tmpdir_abspath,
                                            metadata_only, info->conflicted,
                                            is_move,
                                            disk_children
                                              ? svn_hash_gets(disk_children,
                                                              child_name)
                                              : ((void*)0),
                                            info->recorded_size,
                                            info->recorded_time,
                                            cancel_func, cancel_baton,
                                            ((void*)0), ((void*)0),
                                            iterpool));
            }
          else if (info->kind == svn_node_dir)
            SVN_ERR(copy_versioned_dir(db,
                                       child_src_abspath, child_dst_abspath,
                                       dst_op_root_abspath, tmpdir_abspath,
                                       metadata_only, is_move,
                                       disk_children
                                              ? svn_hash_gets(disk_children,
                                                              child_name)
                                              : ((void*)0),
                                       cancel_func, cancel_baton, ((void*)0), ((void*)0),
                                       iterpool));
          else
            return svn_error_createf(SVN_ERR_NODE_UNEXPECTED_KIND, ((void*)0),
                                     _("cannot handle node kind for '%s'"),
                                     svn_dirent_local_style(child_src_abspath,
                                                            scratch_pool));
        }
      else if (info->status == svn_wc__db_status_deleted
          || info->status == svn_wc__db_status_not_present
          || info->status == svn_wc__db_status_excluded)
        {


          SVN_ERR(svn_wc__db_op_copy(db, child_src_abspath,
                                     child_dst_abspath, dst_op_root_abspath,
                                     is_move, ((void*)0), iterpool));



        }
      else if (info->status == svn_wc__db_status_incomplete)
        {


          return svn_error_createf(SVN_ERR_WC_PATH_UNEXPECTED_STATUS, ((void*)0),
                                   _("Cannot handle status of '%s'"),
                                   svn_dirent_local_style(child_src_abspath,
                                                          iterpool));
        }
      else
        {
          SVN_ERR_ASSERT(info->status == svn_wc__db_status_server_excluded);

          return svn_error_createf(SVN_ERR_WC_PATH_UNEXPECTED_STATUS, ((void*)0),
                                   _("Cannot copy '%s' excluded by server"),
                                   svn_dirent_local_style(child_src_abspath,
                                                          iterpool));
        }

      if (disk_children
          && (info->status == svn_wc__db_status_normal
              || info->status == svn_wc__db_status_added))
        {

          svn_hash_sets(disk_children, child_name, ((void*)0));
        }
    }



  if (disk_children && apr_hash_count(disk_children))
    {
      apr_hash_t *marker_files;

      SVN_ERR(svn_wc__db_get_conflict_marker_files(&marker_files, db,
                                                   src_abspath, scratch_pool,
                                                   scratch_pool));

      work_items = ((void*)0);

      for (hi = apr_hash_first(scratch_pool, disk_children); hi;
           hi = apr_hash_next(hi))
        {
          const char *name = apr_hash_this_key(hi);
          const char *unver_src_abspath, *unver_dst_abspath;
          svn_skel_t *work_item;

          if (svn_wc_is_adm_dir(name, iterpool))
            continue;

          if (cancel_func)
            SVN_ERR(cancel_func(cancel_baton));

          svn_pool_clear(iterpool);
          unver_src_abspath = svn_dirent_join(src_abspath, name, iterpool);
          unver_dst_abspath = svn_dirent_join(dst_abspath, name, iterpool);

          if (marker_files &&
              svn_hash_gets(marker_files, unver_src_abspath))
            continue;

          SVN_ERR(copy_to_tmpdir(&work_item, ((void*)0), db, unver_src_abspath,
                                 unver_dst_abspath, tmpdir_abspath,
                                 TRUE , TRUE ,
                                 ((void*)0), SVN_INVALID_FILESIZE, 0,
                                 cancel_func, cancel_baton,
                                 scratch_pool, iterpool));

          if (work_item)
            work_items = svn_wc__wq_merge(work_items, work_item, scratch_pool);
        }
      SVN_ERR(svn_wc__db_wq_add(db, dst_abspath, work_items, iterpool));
    }

  svn_pool_destroy(iterpool);

  return SVN_NO_ERROR;
}
