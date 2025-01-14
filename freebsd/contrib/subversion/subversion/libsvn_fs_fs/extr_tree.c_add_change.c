
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_node_kind_t ;
typedef int svn_fs_t ;
typedef int svn_fs_path_change_kind_t ;
typedef int svn_fs_id_t ;
typedef int svn_fs_fs__id_part_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int svn_fs__canonicalize_abspath (char const*,int *) ;
 int * svn_fs_fs__add_change (int *,int const*,int ,int const*,int ,int ,int ,int ,int ,int ,char const*,int *) ;

__attribute__((used)) static svn_error_t *
add_change(svn_fs_t *fs,
           const svn_fs_fs__id_part_t *txn_id,
           const char *path,
           const svn_fs_id_t *noderev_id,
           svn_fs_path_change_kind_t change_kind,
           svn_boolean_t text_mod,
           svn_boolean_t prop_mod,
           svn_boolean_t mergeinfo_mod,
           svn_node_kind_t node_kind,
           svn_revnum_t copyfrom_rev,
           const char *copyfrom_path,
           apr_pool_t *pool)
{
  return svn_fs_fs__add_change(fs, txn_id,
                               svn_fs__canonicalize_abspath(path, pool),
                               noderev_id, change_kind,
                               text_mod, prop_mod, mergeinfo_mod,
                               node_kind, copyfrom_rev, copyfrom_path,
                               pool);
}
