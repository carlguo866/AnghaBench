
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RList ;
typedef int RBinFile ;


 int * globalSymbols ;

__attribute__((used)) static RList *symbols(RBinFile *bf) {
 return globalSymbols;
}
