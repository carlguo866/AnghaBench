
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int indexed ;
 int indx (char const**,char const**,int,int *) ;

__attribute__((used)) static int rd_hlx(const char **p) {
 int i;
 const char *list[] = {
  "hl", "ix", "iy", ((void*)0)
 };
 i = indx (p, list, 1, ((void*)0));
 if (i < 2) {
  return i;
 }
 indexed = 0xDD + 0x20 * (i - 2);
 return 1;
}
