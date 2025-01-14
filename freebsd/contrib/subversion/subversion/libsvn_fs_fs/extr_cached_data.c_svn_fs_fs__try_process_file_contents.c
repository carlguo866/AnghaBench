
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {TYPE_5__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_fs_process_contents_func_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_13__ {int expanded_size; int revision; int item_index; } ;
typedef TYPE_2__ representation_t ;
struct TYPE_14__ {int second; int revision; int member_0; } ;
typedef TYPE_3__ pair_cache_key_t ;
struct TYPE_15__ {TYPE_2__* data_rep; } ;
typedef TYPE_4__ node_revision_t ;
struct TYPE_16__ {scalar_t__ fulltext_cache; } ;
typedef TYPE_5__ fs_fs_data_t ;
struct TYPE_17__ {void* baton; int func; } ;
typedef TYPE_6__ cache_access_wrapper_baton_t ;
typedef int apr_pool_t ;


 int FALSE ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 int cache_access_wrapper ;
 scalar_t__ fulltext_size_is_cachable (TYPE_5__*,int ) ;
 int * svn_cache__get_partial (void**,int *,scalar_t__,TYPE_3__*,int ,TYPE_6__*,int *) ;

svn_error_t *
svn_fs_fs__try_process_file_contents(svn_boolean_t *success,
                                     svn_fs_t *fs,
                                     node_revision_t *noderev,
                                     svn_fs_process_contents_func_t processor,
                                     void* baton,
                                     apr_pool_t *pool)
{
  representation_t *rep = noderev->data_rep;
  if (rep)
    {
      fs_fs_data_t *ffd = fs->fsap_data;
      pair_cache_key_t fulltext_cache_key = { 0 };

      fulltext_cache_key.revision = rep->revision;
      fulltext_cache_key.second = rep->item_index;
      if (ffd->fulltext_cache && SVN_IS_VALID_REVNUM(rep->revision)
          && fulltext_size_is_cachable(ffd, rep->expanded_size))
        {
          cache_access_wrapper_baton_t wrapper_baton;
          void *dummy = ((void*)0);

          wrapper_baton.func = processor;
          wrapper_baton.baton = baton;
          return svn_cache__get_partial(&dummy, success,
                                        ffd->fulltext_cache,
                                        &fulltext_cache_key,
                                        cache_access_wrapper,
                                        &wrapper_baton,
                                        pool);
        }
    }

  *success = FALSE;
  return SVN_NO_ERROR;
}
