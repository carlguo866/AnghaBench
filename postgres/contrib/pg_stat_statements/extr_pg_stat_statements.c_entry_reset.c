
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
struct TYPE_6__ {scalar_t__ userid; scalar_t__ dbid; scalar_t__ queryid; } ;
typedef TYPE_1__ pgssHashKey ;
struct TYPE_7__ {TYPE_1__ key; } ;
typedef TYPE_2__ pgssEntry ;
struct TYPE_8__ {int lock; scalar_t__ extent; } ;
typedef scalar_t__ Oid ;
typedef int HASH_SEQ_STATUS ;
typedef int FILE ;


 int * AllocateFile (int ,int ) ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 int FreeFile (int *) ;
 int HASH_REMOVE ;
 int LOG ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int PGSS_TEXT_FILE ;
 int PG_BINARY_W ;
 scalar_t__ UINT64CONST (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,...) ;
 int fileno (int *) ;
 scalar_t__ ftruncate (int ,int ) ;
 long hash_get_num_entries (int ) ;
 scalar_t__ hash_search (int ,TYPE_1__*,int ,int *) ;
 int hash_seq_init (int *,int ) ;
 TYPE_2__* hash_seq_search (int *) ;
 TYPE_3__* pgss ;
 int pgss_hash ;
 int record_gc_qtexts () ;

__attribute__((used)) static void
entry_reset(Oid userid, Oid dbid, uint64 queryid)
{
 HASH_SEQ_STATUS hash_seq;
 pgssEntry *entry;
 FILE *qfile;
 long num_entries;
 long num_remove = 0;
 pgssHashKey key;

 if (!pgss || !pgss_hash)
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("pg_stat_statements must be loaded via shared_preload_libraries")));

 LWLockAcquire(pgss->lock, LW_EXCLUSIVE);
 num_entries = hash_get_num_entries(pgss_hash);

 if (userid != 0 && dbid != 0 && queryid != UINT64CONST(0))
 {

  key.userid = userid;
  key.dbid = dbid;
  key.queryid = queryid;


  entry = (pgssEntry *) hash_search(pgss_hash, &key, HASH_REMOVE, ((void*)0));
  if (entry)
   num_remove++;
 }
 else if (userid != 0 || dbid != 0 || queryid != UINT64CONST(0))
 {

  hash_seq_init(&hash_seq, pgss_hash);
  while ((entry = hash_seq_search(&hash_seq)) != ((void*)0))
  {
   if ((!userid || entry->key.userid == userid) &&
    (!dbid || entry->key.dbid == dbid) &&
    (!queryid || entry->key.queryid == queryid))
   {
    hash_search(pgss_hash, &entry->key, HASH_REMOVE, ((void*)0));
    num_remove++;
   }
  }
 }
 else
 {

  hash_seq_init(&hash_seq, pgss_hash);
  while ((entry = hash_seq_search(&hash_seq)) != ((void*)0))
  {
   hash_search(pgss_hash, &entry->key, HASH_REMOVE, ((void*)0));
   num_remove++;
  }
 }


 if (num_entries != num_remove)
  goto release_lock;





 qfile = AllocateFile(PGSS_TEXT_FILE, PG_BINARY_W);
 if (qfile == ((void*)0))
 {
  ereport(LOG,
    (errcode_for_file_access(),
     errmsg("could not create file \"%s\": %m",
      PGSS_TEXT_FILE)));
  goto done;
 }


 if (ftruncate(fileno(qfile), 0) != 0)
  ereport(LOG,
    (errcode_for_file_access(),
     errmsg("could not truncate file \"%s\": %m",
      PGSS_TEXT_FILE)));

 FreeFile(qfile);

done:
 pgss->extent = 0;

 record_gc_qtexts();

release_lock:
 LWLockRelease(pgss->lock);
}
