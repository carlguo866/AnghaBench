
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char*) ;

__attribute__((used)) static bool base91_use(const char *algo) {
 return algo && !strcmp (algo, "base91");
}
