
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TK_ID ;
 int sqlite3Isalnum (unsigned char) ;
 scalar_t__ sqlite3Isdigit (unsigned char) ;
 scalar_t__ sqlite3KeywordCode (unsigned char*,int) ;

__attribute__((used)) static void identPut(char *z, int *pIdx, char *zSignedIdent){
  unsigned char *zIdent = (unsigned char*)zSignedIdent;
  int i, j, needQuote;
  i = *pIdx;

  for(j=0; zIdent[j]; j++){
    if( !sqlite3Isalnum(zIdent[j]) && zIdent[j]!='_' ) break;
  }
  needQuote = sqlite3Isdigit(zIdent[0])
            || sqlite3KeywordCode(zIdent, j)!=TK_ID
            || zIdent[j]!=0
            || j==0;

  if( needQuote ) z[i++] = '"';
  for(j=0; zIdent[j]; j++){
    z[i++] = zIdent[j];
    if( zIdent[j]=='"' ) z[i++] = '"';
  }
  if( needQuote ) z[i++] = '"';
  z[i] = 0;
  *pIdx = i;
}
