
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 host1x_opcode_restart(unsigned address)
{
 return (5 << 28) | (address >> 4);
}
