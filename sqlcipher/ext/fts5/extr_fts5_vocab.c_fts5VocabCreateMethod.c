
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_vtab ;
typedef int sqlite3 ;


 int fts5VocabInitVtab (int *,void*,int,char const* const*,int **,char**) ;

__attribute__((used)) static int fts5VocabCreateMethod(
  sqlite3 *db,
  void *pAux,
  int argc,
  const char * const *argv,
  sqlite3_vtab **ppVtab,
  char **pzErr
){
  return fts5VocabInitVtab(db, pAux, argc, argv, ppVtab, pzErr);
}
