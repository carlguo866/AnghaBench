
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 G(u32 x, u32 y, u32 z)
{
 return (x & y) | (x & z) | (y & z);
}
