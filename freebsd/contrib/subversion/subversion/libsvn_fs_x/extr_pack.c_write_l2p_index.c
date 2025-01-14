
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_3__ {int proto_l2p_index; int reps; int fs; int dir_props; int file_props; int changes; } ;
typedef TYPE_1__ pack_context_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;


 int APR_END ;
 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int append_entries (int ,int ) ;
 int svn_fs_x__l2p_index_from_p2l_entries (char const**,int ,int ,int *,int *) ;
 int svn_io_append_file (char const*,char const*,int *) ;
 int svn_io_file_flush (int ,int *) ;
 int svn_io_file_name_get (char const**,int ,int *) ;
 int svn_io_file_seek (int ,int ,int *,int *) ;
 int svn_io_remove_file2 (char const*,int ,int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
write_l2p_index(pack_context_t *context,
                apr_pool_t *pool)
{
  apr_pool_t *scratch_pool = svn_pool_create(pool);
  const char *temp_name;
  const char *proto_index;
  apr_off_t offset = 0;



  append_entries(context->reps, context->changes);
  append_entries(context->reps, context->file_props);
  append_entries(context->reps, context->dir_props);


  SVN_ERR(svn_fs_x__l2p_index_from_p2l_entries(&temp_name,
                                               context->fs,
                                               context->reps,
                                               pool, scratch_pool));


  SVN_ERR(svn_io_file_name_get(&proto_index, context->proto_l2p_index,
                               scratch_pool));

  SVN_ERR(svn_io_file_flush(context->proto_l2p_index, scratch_pool));
  SVN_ERR(svn_io_append_file(temp_name, proto_index, scratch_pool));
  SVN_ERR(svn_io_remove_file2(temp_name, FALSE, scratch_pool));
  SVN_ERR(svn_io_file_seek(context->proto_l2p_index, APR_END, &offset,
                           scratch_pool));


  svn_pool_destroy(scratch_pool);

  return SVN_NO_ERROR;
}
