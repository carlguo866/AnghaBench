
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;


 int Lock ;
 int method (int ,int ,void (*) (int )) ;

void unlock(var self) {
  method(self, Lock, unlock);
}
