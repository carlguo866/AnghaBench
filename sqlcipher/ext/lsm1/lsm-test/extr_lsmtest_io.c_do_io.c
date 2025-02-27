
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ fd; int nWrite; } ;
typedef TYPE_1__ u8 ;
typedef TYPE_1__ IoContext ;


 int O_CREAT ;
 int O_RDWR ;
 int _O_BINARY ;
 int close (scalar_t__) ;
 int doOneCmd (TYPE_1__*,TYPE_1__*,int,char*,char**) ;
 int free (char*) ;
 scalar_t__ getNextSize (char*,int ,int*) ;
 TYPE_1__* malloc (int) ;
 int memset (TYPE_1__*,int,int) ;
 scalar_t__ open (char*,int,int) ;
 int perror (char*) ;
 int printf (char*,int,int) ;
 int readStdin (char**) ;
 int testPrintError (char*,int) ;
 int testPrintUsage (char*) ;
 int testTimeGet () ;
 int testTimeInit () ;

int do_io(int nArg, char **azArg){
  IoContext ctx;
  int pgsz;
  char *zFile;
  char *zPgsz;
  int i;
  int rc = 0;

  char *zStdin = 0;
  char *z;

  u8 *aData;

  memset(&ctx, 0, sizeof(IoContext));
  if( nArg<2 ){
    testPrintUsage("FILE PGSZ ?CMD-1 ...?");
    return -1;
  }
  zFile = azArg[0];
  zPgsz = azArg[1];

  pgsz = (int)getNextSize(zPgsz, 0, &rc);
  if( pgsz<=0 ){
    testPrintError("Ridiculous page size: %d", pgsz);
    return -1;
  }
  aData = malloc(pgsz);
  memset(aData, 0x77, pgsz);

  ctx.fd = open(zFile, O_RDWR|O_CREAT|_O_BINARY, 0644);
  if( ctx.fd<0 ){
    perror("open: ");
    return -1;
  }

  if( nArg==2 ){
    readStdin(&zStdin);
    testTimeInit();
    z = zStdin;
    while( *z && rc==0 ){
      rc = doOneCmd(&ctx, aData, pgsz, z, &z);
    }
  }else{
    testTimeInit();
    for(i=2; i<nArg; i++){
      rc = doOneCmd(&ctx, aData, pgsz, azArg[i], 0);
    }
  }

  printf("%dK written in %d ms\n", ctx.nWrite, testTimeGet());

  free(zStdin);
  close(ctx.fd);

  return 0;
}
