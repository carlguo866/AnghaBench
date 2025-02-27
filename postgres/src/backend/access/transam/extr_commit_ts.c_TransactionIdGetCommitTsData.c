
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int TransactionId ;
typedef int TimestampTz ;
struct TYPE_14__ {int newestCommitTsXid; int oldestCommitTsXid; } ;
struct TYPE_13__ {TYPE_2__* shared; } ;
struct TYPE_9__ {int nodeid; int time; } ;
struct TYPE_12__ {TYPE_1__ dataLastCommit; int xidLastCommit; int commitTsActive; } ;
struct TYPE_11__ {int nodeid; int time; } ;
struct TYPE_10__ {scalar_t__* page_buffer; } ;
typedef int RepOriginId ;
typedef TYPE_3__ CommitTimestampEntry ;


 int Assert (int) ;
 int CommitTsControlLock ;
 TYPE_6__* CommitTsCtl ;
 int CommitTsLock ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int InvalidRepOriginId ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 TYPE_7__* ShmemVariableCache ;
 int SimpleLruReadPage_ReadOnly (TYPE_6__*,int,int ) ;
 int SizeOfCommitTimestampEntry ;
 int TransactionIdIsNormal (int ) ;
 scalar_t__ TransactionIdIsValid (int ) ;
 scalar_t__ TransactionIdPrecedes (int ,int ) ;
 int TransactionIdToCTsEntry (int ) ;
 int TransactionIdToCTsPage (int ) ;
 TYPE_5__* commitTsShared ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int error_commit_ts_disabled () ;
 int memcpy (TYPE_3__*,scalar_t__,int) ;

bool
TransactionIdGetCommitTsData(TransactionId xid, TimestampTz *ts,
        RepOriginId *nodeid)
{
 int pageno = TransactionIdToCTsPage(xid);
 int entryno = TransactionIdToCTsEntry(xid);
 int slotno;
 CommitTimestampEntry entry;
 TransactionId oldestCommitTsXid;
 TransactionId newestCommitTsXid;

 if (!TransactionIdIsValid(xid))
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("cannot retrieve commit timestamp for transaction %u", xid)));
 else if (!TransactionIdIsNormal(xid))
 {

  *ts = 0;
  if (nodeid)
   *nodeid = 0;
  return 0;
 }

 LWLockAcquire(CommitTsLock, LW_SHARED);


 if (!commitTsShared->commitTsActive)
  error_commit_ts_disabled();





 if (commitTsShared->xidLastCommit == xid)
 {
  *ts = commitTsShared->dataLastCommit.time;
  if (nodeid)
   *nodeid = commitTsShared->dataLastCommit.nodeid;

  LWLockRelease(CommitTsLock);
  return *ts != 0;
 }

 oldestCommitTsXid = ShmemVariableCache->oldestCommitTsXid;
 newestCommitTsXid = ShmemVariableCache->newestCommitTsXid;

 Assert(TransactionIdIsValid(oldestCommitTsXid) == TransactionIdIsValid(newestCommitTsXid));
 LWLockRelease(CommitTsLock);




 if (!TransactionIdIsValid(oldestCommitTsXid) ||
  TransactionIdPrecedes(xid, oldestCommitTsXid) ||
  TransactionIdPrecedes(newestCommitTsXid, xid))
 {
  *ts = 0;
  if (nodeid)
   *nodeid = InvalidRepOriginId;
  return 0;
 }


 slotno = SimpleLruReadPage_ReadOnly(CommitTsCtl, pageno, xid);
 memcpy(&entry,
     CommitTsCtl->shared->page_buffer[slotno] +
     SizeOfCommitTimestampEntry * entryno,
     SizeOfCommitTimestampEntry);

 *ts = entry.time;
 if (nodeid)
  *nodeid = entry.nodeid;

 LWLockRelease(CommitTsControlLock);
 return *ts != 0;
}
