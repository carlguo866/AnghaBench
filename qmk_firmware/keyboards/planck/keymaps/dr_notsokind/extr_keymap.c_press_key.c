
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int register_code (int ) ;
 int unregister_code (int ) ;

void press_key(uint16_t key) {
    register_code(key);
    unregister_code(key);
}
