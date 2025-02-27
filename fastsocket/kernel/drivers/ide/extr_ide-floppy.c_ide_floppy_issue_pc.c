
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ide_disk_obj {int dummy; } ;
struct ide_cmd {int dummy; } ;
struct ide_atapi_pc {scalar_t__* c; scalar_t__ retries; int flags; int error; } ;
typedef int ide_startstop_t ;
struct TYPE_8__ {int (* pc_callback ) (TYPE_2__*,int ) ;struct ide_atapi_pc* failed_pc; TYPE_1__* hwif; struct ide_atapi_pc* pc; struct ide_disk_obj* driver_data; } ;
typedef TYPE_2__ ide_drive_t ;
struct TYPE_7__ {int rq; } ;


 int EIO ;
 scalar_t__ GPCMD_REQUEST_SENSE ;
 scalar_t__ IDEFLOPPY_MAX_PC_RETRIES ;
 int IDE_DBG_FUNC ;
 int IDE_DRV_ERROR_GENERAL ;
 int PC_FLAG_SUPPRESS_ERROR ;
 unsigned int blk_rq_bytes (int ) ;
 int ide_complete_rq (TYPE_2__*,int ,unsigned int) ;
 int ide_debug_log (int ,char*,scalar_t__) ;
 int ide_floppy_report_error (struct ide_disk_obj*,struct ide_atapi_pc*) ;
 int ide_issue_pc (TYPE_2__*,struct ide_cmd*) ;
 int ide_stopped ;
 int stub1 (TYPE_2__*,int ) ;

__attribute__((used)) static ide_startstop_t ide_floppy_issue_pc(ide_drive_t *drive,
        struct ide_cmd *cmd,
        struct ide_atapi_pc *pc)
{
 struct ide_disk_obj *floppy = drive->driver_data;

 if (drive->failed_pc == ((void*)0) &&
     pc->c[0] != GPCMD_REQUEST_SENSE)
  drive->failed_pc = pc;


 drive->pc = pc;

 if (pc->retries > IDEFLOPPY_MAX_PC_RETRIES) {
  unsigned int done = blk_rq_bytes(drive->hwif->rq);

  if (!(pc->flags & PC_FLAG_SUPPRESS_ERROR))
   ide_floppy_report_error(floppy, pc);


  pc->error = IDE_DRV_ERROR_GENERAL;

  drive->failed_pc = ((void*)0);
  drive->pc_callback(drive, 0);
  ide_complete_rq(drive, -EIO, done);
  return ide_stopped;
 }

 ide_debug_log(IDE_DBG_FUNC, "retry #%d", pc->retries);

 pc->retries++;

 return ide_issue_pc(drive, cmd);
}
