
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_18__ ;


struct TYPE_22__ {int db_txn; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_skel_t ;
struct TYPE_23__ {scalar_t__ expiration_date; } ;
typedef TYPE_2__ svn_lock_t ;
struct TYPE_24__ {TYPE_4__* fsap_data; } ;
typedef TYPE_3__ svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_25__ {TYPE_18__* locks; } ;
typedef TYPE_4__ base_fs_data_t ;
typedef int apr_pool_t ;
struct TYPE_26__ {int size; int data; } ;
struct TYPE_21__ {int (* get ) (TYPE_18__*,int ,int ,int ,int ) ;} ;
typedef TYPE_5__ DBT ;


 int BDB_WRAP (TYPE_3__*,int ,int) ;
 int DB_NOTFOUND ;
 int N_ (char*) ;
 int SVN_ERR (int ) ;
 int * SVN_FS__ERR_LOCK_EXPIRED (TYPE_3__*,char const*) ;
 int * SVN_NO_ERROR ;
 scalar_t__ apr_time_now () ;
 int stub1 (TYPE_18__*,int ,int ,int ,int ) ;
 int * svn_fs_base__err_bad_lock_token (TYPE_3__*,char const*) ;
 int * svn_fs_base__err_corrupt_lock (TYPE_3__*,char const*) ;
 int svn_fs_base__parse_lock_skel (TYPE_2__**,int *,int *) ;
 int svn_fs_base__result_dbt (TYPE_5__*) ;
 int svn_fs_base__str_to_dbt (TYPE_5__*,char const*) ;
 int svn_fs_base__track_dbt (TYPE_5__*,int *) ;
 int svn_fs_base__trail_debug (TYPE_1__*,char*,char*) ;
 int svn_fs_bdb__lock_delete (TYPE_3__*,char const*,TYPE_1__*,int *) ;
 int * svn_skel__parse (int ,int ,int *) ;

svn_error_t *
svn_fs_bdb__lock_get(svn_lock_t **lock_p,
                     svn_fs_t *fs,
                     const char *lock_token,
                     trail_t *trail,
                     apr_pool_t *pool)
{
  base_fs_data_t *bfd = fs->fsap_data;
  DBT key, value;
  int db_err;
  svn_skel_t *skel;
  svn_lock_t *lock;

  svn_fs_base__trail_debug(trail, "lock", "get");
  db_err = bfd->locks->get(bfd->locks, trail->db_txn,
                           svn_fs_base__str_to_dbt(&key, lock_token),
                           svn_fs_base__result_dbt(&value),
                           0);
  svn_fs_base__track_dbt(&value, pool);

  if (db_err == DB_NOTFOUND)
    return svn_fs_base__err_bad_lock_token(fs, lock_token);
  SVN_ERR(BDB_WRAP(fs, N_("reading lock"), db_err));


  skel = svn_skel__parse(value.data, value.size, pool);
  if (! skel)
    return svn_fs_base__err_corrupt_lock(fs, lock_token);


  SVN_ERR(svn_fs_base__parse_lock_skel(&lock, skel, pool));


  if (lock->expiration_date && (apr_time_now() > lock->expiration_date))
    {
      SVN_ERR(svn_fs_bdb__lock_delete(fs, lock_token, trail, pool));
      return SVN_FS__ERR_LOCK_EXPIRED(fs, lock_token);
    }

  *lock_p = lock;
  return SVN_NO_ERROR;
}
