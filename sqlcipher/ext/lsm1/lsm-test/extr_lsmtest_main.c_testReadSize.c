
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int i64 ;


 scalar_t__ atoi (char*) ;
 int strlen (char*) ;

__attribute__((used)) static i64 testReadSize(char *z){
  int n = strlen(z);
  char c = z[n-1];
  i64 nMul = 1;

  switch( c ){
    case 'g': case 'G':
      nMul = (1<<30);
      break;

    case 'm': case 'M':
      nMul = (1<<20);
      break;

    case 'k': case 'K':
      nMul = (1<<10);
      break;

    default:
      nMul = 1;
  }

  return nMul * (i64)atoi(z);
}
