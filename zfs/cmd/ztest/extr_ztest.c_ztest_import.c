
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {unsigned long long zs_metaslab_sz; } ;
typedef TYPE_3__ ztest_shared_t ;
struct TYPE_14__ {TYPE_2__* spa_root_vdev; } ;
typedef TYPE_4__ spa_t ;
typedef int nvlist_t ;
struct TYPE_15__ {int paths; char** path; int can_be_active; int member_0; } ;
typedef TYPE_5__ importargs_t ;
struct TYPE_16__ {char* zo_pool; char* zo_dir; int zo_mmp_test; } ;
struct TYPE_12__ {TYPE_1__** vdev_child; } ;
struct TYPE_11__ {unsigned long long vdev_ms_shift; } ;


 int B_FALSE ;
 int FREAD ;
 int FTAG ;
 int FWRITE ;
 int MUTEX_DEFAULT ;
 int VERIFY0 (int ) ;
 int ZFS_IMPORT_MISSING_LOG ;
 int fatal (int ,char*) ;
 int kernel_fini () ;
 int kernel_init (int) ;
 int libzpool_config_ops ;
 int mutex_destroy (int *) ;
 int mutex_init (int *,int *,int ,int *) ;
 int pthread_rwlock_destroy (int *) ;
 int pthread_rwlock_init (int *,int *) ;
 int spa_close (TYPE_4__*,int ) ;
 int spa_import (char*,int *,int *,int) ;
 int spa_open (char*,TYPE_4__**,int ) ;
 int zpool_find_config (int *,char*,int **,TYPE_5__*,int *) ;
 int ztest_checkpoint_lock ;
 int ztest_freeze () ;
 int ztest_name_lock ;
 TYPE_6__ ztest_opts ;
 int ztest_run_zdb (char*) ;
 int ztest_vdev_lock ;

__attribute__((used)) static void
ztest_import(ztest_shared_t *zs)
{
 importargs_t args = { 0 };
 spa_t *spa;
 nvlist_t *cfg = ((void*)0);
 int nsearch = 1;
 char *searchdirs[nsearch];
 char *name = ztest_opts.zo_pool;
 int flags = ZFS_IMPORT_MISSING_LOG;
 int error;

 mutex_init(&ztest_vdev_lock, ((void*)0), MUTEX_DEFAULT, ((void*)0));
 mutex_init(&ztest_checkpoint_lock, ((void*)0), MUTEX_DEFAULT, ((void*)0));
 VERIFY0(pthread_rwlock_init(&ztest_name_lock, ((void*)0)));

 kernel_init(FREAD | FWRITE);

 searchdirs[0] = ztest_opts.zo_dir;
 args.paths = nsearch;
 args.path = searchdirs;
 args.can_be_active = B_FALSE;

 error = zpool_find_config(((void*)0), name, &cfg, &args,
     &libzpool_config_ops);
 if (error)
  (void) fatal(0, "No pools found\n");

 VERIFY0(spa_import(name, cfg, ((void*)0), flags));
 VERIFY0(spa_open(name, &spa, FTAG));
 zs->zs_metaslab_sz =
     1ULL << spa->spa_root_vdev->vdev_child[0]->vdev_ms_shift;
 spa_close(spa, FTAG);

 kernel_fini();

 if (!ztest_opts.zo_mmp_test) {
  ztest_run_zdb(ztest_opts.zo_pool);
  ztest_freeze();
  ztest_run_zdb(ztest_opts.zo_pool);
 }

 (void) pthread_rwlock_destroy(&ztest_name_lock);
 mutex_destroy(&ztest_vdev_lock);
 mutex_destroy(&ztest_checkpoint_lock);
}
