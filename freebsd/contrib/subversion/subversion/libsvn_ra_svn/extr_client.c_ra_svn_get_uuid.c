
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* uuid; } ;
typedef TYPE_1__ svn_ra_svn_conn_t ;
struct TYPE_6__ {TYPE_1__* conn; } ;
typedef TYPE_2__ svn_ra_svn__session_baton_t ;
struct TYPE_7__ {TYPE_2__* priv; } ;
typedef TYPE_3__ svn_ra_session_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;

__attribute__((used)) static svn_error_t *ra_svn_get_uuid(svn_ra_session_t *session, const char **uuid,
                                    apr_pool_t *pool)
{
  svn_ra_svn__session_baton_t *sess_baton = session->priv;
  svn_ra_svn_conn_t *conn = sess_baton->conn;

  *uuid = conn->uuid;
  return SVN_NO_ERROR;
}
