
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_file ;


 int SQLITE_OK ;

__attribute__((used)) static int inmemCheckReservedLock(sqlite3_file *pFile, int *pOut){
  *pOut = 0;
  return SQLITE_OK;
}
