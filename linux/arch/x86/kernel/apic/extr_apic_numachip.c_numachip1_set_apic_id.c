
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;



__attribute__((used)) static u32 numachip1_set_apic_id(unsigned int id)
{
 return (id & 0xff) << 24;
}
