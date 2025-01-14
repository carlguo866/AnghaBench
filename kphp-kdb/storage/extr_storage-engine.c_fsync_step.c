
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ fd_wronly; } ;
typedef TYPE_2__ storage_binlog_file_t ;
struct TYPE_7__ {int sigev_notify; } ;
struct TYPE_9__ {scalar_t__ aio_fildes; TYPE_1__ aio_sigevent; } ;


 int O_SYNC ;
 int SIGEV_NONE ;
 int aio_fsync (int ,TYPE_5__*) ;
 TYPE_5__ aio_fsync_cbp ;
 scalar_t__ binlog_disabled ;
 TYPE_2__* dirty_binlog_queue_pop () ;
 scalar_t__ fsync_step_delay ;
 scalar_t__ get_aio_inprogress () ;
 TYPE_2__* last_fsync_binlog_file ;
 scalar_t__ last_fsync_step_time ;
 scalar_t__ now ;
 int tot_aio_fsync_queries ;

__attribute__((used)) static void fsync_step (void) {
  if (binlog_disabled || get_aio_inprogress ()) {
    return;
  }
  if (now - last_fsync_step_time < fsync_step_delay) {
    return;
  }
  last_fsync_step_time = now;
  storage_binlog_file_t *B;
  while (1) {
    B = dirty_binlog_queue_pop ();
    if (B == ((void*)0)) {
      return;
    }
    if (B->fd_wronly >= 0) {
      break;
    }
  }

  aio_fsync_cbp.aio_fildes = B->fd_wronly;
  aio_fsync_cbp.aio_sigevent.sigev_notify = SIGEV_NONE;
  aio_fsync (O_SYNC, &aio_fsync_cbp);
  tot_aio_fsync_queries++;
  last_fsync_binlog_file = B;
}
