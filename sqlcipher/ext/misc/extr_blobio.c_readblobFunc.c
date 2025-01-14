
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_int64 ;
typedef int sqlite3_context ;
typedef int sqlite3_blob ;
typedef int sqlite3 ;


 int sqlite3_blob_close (int *) ;
 int sqlite3_blob_open (int *,char const*,char const*,char const*,int ,int ,int **) ;
 int sqlite3_blob_read (int *,unsigned char*,int,int) ;
 int * sqlite3_context_db_handle (int *) ;
 int sqlite3_free (unsigned char*) ;
 unsigned char* sqlite3_malloc64 (int) ;
 int sqlite3_result_blob (int *,unsigned char*,int,int (*) (unsigned char*)) ;
 int sqlite3_result_error (int *,char*,int) ;
 int sqlite3_result_error_nomem (int *) ;
 int sqlite3_value_int (int *) ;
 int sqlite3_value_int64 (int *) ;
 scalar_t__ sqlite3_value_text (int *) ;

__attribute__((used)) static void readblobFunc(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  sqlite3_blob *pBlob = 0;
  const char *zSchema;
  const char *zTable;
  const char *zColumn;
  sqlite3_int64 iRowid;
  int iOfst;
  unsigned char *aData;
  int nData;
  sqlite3 *db;
  int rc;

  zSchema = (const char*)sqlite3_value_text(argv[0]);
  zTable = (const char*)sqlite3_value_text(argv[1]);
  if( zTable==0 ){
    sqlite3_result_error(context, "bad table name", -1);
    return;
  }
  zColumn = (const char*)sqlite3_value_text(argv[2]);
  if( zTable==0 ){
    sqlite3_result_error(context, "bad column name", -1);
    return;
  }
  iRowid = sqlite3_value_int64(argv[3]);
  iOfst = sqlite3_value_int(argv[4]);
  nData = sqlite3_value_int(argv[5]);
  if( nData<=0 ) return;
  aData = sqlite3_malloc64( nData+1 );
  if( aData==0 ){
    sqlite3_result_error_nomem(context);
    return;
  }
  db = sqlite3_context_db_handle(context);
  rc = sqlite3_blob_open(db, zSchema, zTable, zColumn, iRowid, 0, &pBlob);
  if( rc ){
    sqlite3_free(aData);
    sqlite3_result_error(context, "cannot open BLOB pointer", -1);
    return;
  }
  rc = sqlite3_blob_read(pBlob, aData, nData, iOfst);
  sqlite3_blob_close(pBlob);
  if( rc ){
    sqlite3_free(aData);
    sqlite3_result_error(context, "BLOB write failed", -1);
  }else{
    sqlite3_result_blob(context, aData, nData, sqlite3_free);
  }
}
