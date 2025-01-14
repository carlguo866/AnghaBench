
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;


 int APR_OS_DEFAULT ;
 int FALSE ;
 int PATH_PACKED ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int pack_log_addressed (int *,char const*,char const*,int ,int ,int ,int ,void*,int *) ;
 int pack_phys_addressed (char const*,char const*,int ,int,int ,int ,void*,int *) ;
 char* svn_dirent_join (char const*,int ,int *) ;
 scalar_t__ svn_fs_fs__use_log_addressing (int *) ;
 int svn_io_copy_perms (char const*,char const*,int *) ;
 int svn_io_dir_make (char const*,int ,int *) ;
 int svn_io_remove_dir2 (char const*,int ,int ,void*,int *) ;
 int svn_io_set_file_read_only (char const*,int ,int *) ;

__attribute__((used)) static svn_error_t *
pack_rev_shard(svn_fs_t *fs,
               const char *pack_file_dir,
               const char *shard_path,
               apr_int64_t shard,
               int max_files_per_dir,
               apr_size_t max_mem,
               svn_boolean_t flush_to_disk,
               svn_cancel_func_t cancel_func,
               void *cancel_baton,
               apr_pool_t *pool)
{
  const char *pack_file_path;
  svn_revnum_t shard_rev = (svn_revnum_t) (shard * max_files_per_dir);


  pack_file_path = svn_dirent_join(pack_file_dir, PATH_PACKED, pool);


  SVN_ERR(svn_io_remove_dir2(pack_file_dir, TRUE, cancel_func, cancel_baton,
                             pool));


  SVN_ERR(svn_io_dir_make(pack_file_dir, APR_OS_DEFAULT, pool));


  if (svn_fs_fs__use_log_addressing(fs))
    SVN_ERR(pack_log_addressed(fs, pack_file_dir, shard_path,
                               shard_rev, max_mem, flush_to_disk,
                               cancel_func, cancel_baton, pool));
  else
    SVN_ERR(pack_phys_addressed(pack_file_dir, shard_path, shard_rev,
                                max_files_per_dir, flush_to_disk,
                                cancel_func, cancel_baton, pool));

  SVN_ERR(svn_io_copy_perms(shard_path, pack_file_dir, pool));
  SVN_ERR(svn_io_set_file_read_only(pack_file_path, FALSE, pool));

  return SVN_NO_ERROR;
}
