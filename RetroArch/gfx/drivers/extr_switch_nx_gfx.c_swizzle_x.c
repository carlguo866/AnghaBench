
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int pdep (int,int ) ;

__attribute__((used)) static uint32_t swizzle_x(uint32_t v) { return pdep(~0x7B4u, v); }
