
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pool; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_error_t ;
struct file_checksum_args {int kind; int checksum; int path; int root; } ;
typedef int dag_node_t ;


 int SVN_ERR (int ) ;
 int get_dag (int **,int ,int ,TYPE_1__*,int ) ;
 int * svn_fs_base__dag_file_checksum (int ,int ,int *,TYPE_1__*,int ) ;

__attribute__((used)) static svn_error_t *
txn_body_file_checksum(void *baton,
                       trail_t *trail)
{
  struct file_checksum_args *args = baton;
  dag_node_t *file;

  SVN_ERR(get_dag(&file, args->root, args->path, trail, trail->pool));

  return svn_fs_base__dag_file_checksum(args->checksum, args->kind, file,
                                        trail, trail->pool);
}
