
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int amd29k_instr_t ;


 int AMD29K_SET_INVALID (int *,int) ;
 int AMD29K_SET_VALUE (int *,int ,int const,int ) ;
 int AMD29K_TYPE_REG ;

__attribute__((used)) static void decode_rb(amd29k_instr_t* instruction, const ut8* buffer) {
 AMD29K_SET_VALUE (instruction, 0, buffer[3], AMD29K_TYPE_REG);
 AMD29K_SET_INVALID (instruction, 1);
 AMD29K_SET_INVALID (instruction, 2);
 AMD29K_SET_INVALID (instruction, 3);
 AMD29K_SET_INVALID (instruction, 4);
 AMD29K_SET_INVALID (instruction, 5);
}
