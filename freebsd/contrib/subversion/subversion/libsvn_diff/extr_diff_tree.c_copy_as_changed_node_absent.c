
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_4__ {struct copy_as_changed_baton_t* baton; } ;
typedef TYPE_1__ svn_diff_tree_processor_t ;
struct copy_as_changed_baton_t {TYPE_2__* processor; } ;
typedef int apr_pool_t ;
struct TYPE_5__ {int (* node_absent ) (char const*,void*,TYPE_2__*,int *) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (char const*,void*,TYPE_2__*,int *) ;

__attribute__((used)) static svn_error_t *
copy_as_changed_node_absent(const char *relpath,
                            void *dir_baton,
                            const svn_diff_tree_processor_t *processor,
                            apr_pool_t *scratch_pool)
{
  struct copy_as_changed_baton_t *cb = processor->baton;

  SVN_ERR(cb->processor->node_absent(relpath,
                                    dir_baton,
                                    cb->processor,
                                    scratch_pool));
  return SVN_NO_ERROR;
}
