
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct Option TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_7__ {scalar_t__ p; } ;
struct TYPE_6__ {int eType; TYPE_3__ output; scalar_t__ pgno; } ;
typedef TYPE_1__ bt_info ;
typedef int bt_db ;
struct Option {char const* zName; int bPgno; int eOpt; } ;


 int BT_CONTROL_INFO ;
 int BT_INFO_BLOCK_FREELIST ;
 int BT_INFO_FILENAME ;
 int BT_INFO_HDRDUMP ;
 int BT_INFO_PAGEDUMP ;
 int BT_INFO_PAGEDUMP_ASCII ;
 int BT_INFO_PAGE_FREELIST ;
 int BT_INFO_PAGE_LEAKS ;
 int SQLITE4_OK ;
 scalar_t__ atoi (char*) ;
 int printf (char*,char*) ;
 int sqlite4BtControl (int *,int ,TYPE_1__*) ;
 int sqlite4BtNew (int ,int ,int **) ;
 int sqlite4BtOpen (int *,char*) ;
 int sqlite4_buffer_clear (TYPE_3__*) ;
 int sqlite4_buffer_init (TYPE_3__*,int ) ;
 int sqlite4_env_default () ;
 int testArgSelect (TYPE_2__*,char*,char*,int*) ;
 int testPrintError (char*,int) ;
 int testPrintFUsage (char*,char*,char*) ;
 int testPrintUsage (char*) ;

int do_bt(int nArg, char **azArg){
  struct Option {
    const char *zName;
    int bPgno;
    int eOpt;
  } aOpt [] = {
    { "dbhdr", 0, BT_INFO_HDRDUMP },
    { "filename", 0, BT_INFO_FILENAME },
    { "block_freelist", 0, BT_INFO_BLOCK_FREELIST },
    { "page_freelist", 0, BT_INFO_PAGE_FREELIST },
    { "filename", 0, BT_INFO_FILENAME },
    { "page", 1, BT_INFO_PAGEDUMP },
    { "page_ascii", 1, BT_INFO_PAGEDUMP_ASCII },
    { "leaks", 0, BT_INFO_PAGE_LEAKS },
    { 0, 0 }
  };
  int iOpt;
  int rc;
  bt_info buf;
  char *zOpt;
  char *zFile;

  bt_db *db = 0;

  if( nArg<2 ){
    testPrintUsage("FILENAME OPTION ...");
    return -1;
  }
  zFile = azArg[0];
  zOpt = azArg[1];

  rc = testArgSelect(aOpt, "option", zOpt, &iOpt);
  if( rc!=0 ) return rc;
  if( nArg!=2+aOpt[iOpt].bPgno ){
    testPrintFUsage("FILENAME %s %s", zOpt, aOpt[iOpt].bPgno ? "PGNO" : "");
    return -4;
  }

  rc = sqlite4BtNew(sqlite4_env_default(), 0, &db);
  if( rc!=SQLITE4_OK ){
    testPrintError("sqlite4BtNew() failed: %d", rc);
    return -2;
  }
  rc = sqlite4BtOpen(db, zFile);
  if( rc!=SQLITE4_OK ){
    testPrintError("sqlite4BtOpen() failed: %d", rc);
    return -3;
  }

  buf.eType = aOpt[iOpt].eOpt;
  buf.pgno = 0;
  sqlite4_buffer_init(&buf.output, 0);

  if( aOpt[iOpt].bPgno ){
    buf.pgno = (u32)atoi(azArg[2]);
  }

  rc = sqlite4BtControl(db, BT_CONTROL_INFO, &buf);
  if( rc!=SQLITE4_OK ){
    testPrintError("sqlite4BtControl() failed: %d\n", rc);
    return -4;
  }

  printf("%s\n", (char*)buf.output.p);
  sqlite4_buffer_clear(&buf.output);
  return 0;
}
