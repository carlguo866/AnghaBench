
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int wc_id; int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_skel_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 scalar_t__ FALSE ;
 int STMT_HAS_LAYER_BETWEEN ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int bump_mark_tree_conflict (TYPE_1__*,char const*,int,char const*,char const*,int *,int *) ;
 int depth_sufficient_to_bump (scalar_t__*,TYPE_1__*,char const*,int,int ,int *) ;
 char* svn_relpath_prefix (char const*,int,int *) ;
 int svn_sqlite__bindf (int *,char*,int ,char const*,int,int) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (scalar_t__*,int *) ;
 int svn_wc__db_op_copy_layer_internal (TYPE_1__*,char const*,int,char const*,int *,int *,int *) ;
 int svn_wc__db_read_conflict_internal (int **,int *,int *,TYPE_1__*,char const*,int *,int *) ;
 int svn_wc__db_wclock_owns_lock_internal (scalar_t__*,TYPE_1__*,char const*,scalar_t__,int *) ;
 int verify_write_lock (TYPE_1__*,char const*,int *) ;

__attribute__((used)) static svn_error_t *
bump_moved_layer(svn_boolean_t *recurse,
                 svn_wc__db_wcroot_t *wcroot,
                 const char *local_relpath,
                 int op_depth,
                 const char *src_relpath,
                 int src_del_depth,
                 svn_depth_t src_depth,
                 const char *dst_relpath,
                 svn_wc__db_t *db,
                 apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  svn_skel_t *conflict;
  svn_boolean_t can_bump;
  const char *src_root_relpath;

  SVN_ERR(verify_write_lock(wcroot, local_relpath, scratch_pool));

  *recurse = FALSE;

  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_HAS_LAYER_BETWEEN));

  SVN_ERR(svn_sqlite__bindf(stmt, "isdd", wcroot->wc_id, local_relpath,
                            op_depth, src_del_depth));

  SVN_ERR(svn_sqlite__step(&have_row, stmt));
  SVN_ERR(svn_sqlite__reset(stmt));

  if (have_row)
    return SVN_NO_ERROR;

  if (op_depth == 0)
    SVN_ERR(depth_sufficient_to_bump(&can_bump, wcroot, src_relpath,
                                     op_depth, src_depth, scratch_pool));
  else


    can_bump = TRUE;


  if (can_bump)
    {
      svn_boolean_t locked;

      SVN_ERR(svn_wc__db_wclock_owns_lock_internal(&locked, wcroot,
                                                   dst_relpath,
                                                   FALSE, scratch_pool));

      if (!locked)
        can_bump = FALSE;
    }

  src_root_relpath = svn_relpath_prefix(src_relpath, src_del_depth,
                                        scratch_pool);

  if (!can_bump)
    {
      SVN_ERR(bump_mark_tree_conflict(wcroot, src_relpath, op_depth,
                                      src_root_relpath, dst_relpath,
                                      db, scratch_pool));

      return SVN_NO_ERROR;
    }

  SVN_ERR(svn_wc__db_read_conflict_internal(&conflict, ((void*)0), ((void*)0),
                                            wcroot, src_root_relpath,
                                            scratch_pool, scratch_pool));


  if (!conflict)
    {


      SVN_ERR(verify_write_lock(wcroot, src_relpath, scratch_pool));

      SVN_ERR(svn_wc__db_op_copy_layer_internal(wcroot,
                                                src_relpath, op_depth,
                                                dst_relpath, ((void*)0), ((void*)0),
                                                scratch_pool));

      *recurse = TRUE;
    }

  return SVN_NO_ERROR;
}
