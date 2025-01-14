
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_ra_session_t ;
typedef int svn_error_t ;
typedef int svn_delta_editor_t ;
typedef int svn_commit_callback_t ;
typedef int svn_commit_callback2_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int svn_compat_wrap_commit_callback (int *,void**,int ,void*,int *) ;
 int * svn_ra_get_commit_editor2 (int *,int const**,void**,char const*,int ,void*,int *,int ,int *) ;

svn_error_t *svn_ra_get_commit_editor(svn_ra_session_t *session,
                                      const svn_delta_editor_t **editor,
                                      void **edit_baton,
                                      const char *log_msg,
                                      svn_commit_callback_t callback,
                                      void *callback_baton,
                                      apr_hash_t *lock_tokens,
                                      svn_boolean_t keep_locks,
                                      apr_pool_t *pool)
{
  svn_commit_callback2_t callback2;
  void *callback2_baton;

  svn_compat_wrap_commit_callback(&callback2, &callback2_baton,
                                  callback, callback_baton,
                                  pool);

  return svn_ra_get_commit_editor2(session, editor, edit_baton,
                                   log_msg, callback2,
                                   callback2_baton, lock_tokens,
                                   keep_locks, pool);
}
