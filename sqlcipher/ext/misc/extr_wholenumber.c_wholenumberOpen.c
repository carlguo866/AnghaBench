
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int base; } ;
typedef TYPE_1__ wholenumber_cursor ;
typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_vtab ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_1__* sqlite3_malloc (int) ;

__attribute__((used)) static int wholenumberOpen(sqlite3_vtab *p, sqlite3_vtab_cursor **ppCursor){
  wholenumber_cursor *pCur;
  pCur = sqlite3_malloc( sizeof(*pCur) );
  if( pCur==0 ) return SQLITE_NOMEM;
  memset(pCur, 0, sizeof(*pCur));
  *ppCursor = &pCur->base;
  return SQLITE_OK;
}
