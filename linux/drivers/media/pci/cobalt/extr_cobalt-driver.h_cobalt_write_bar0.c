
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct cobalt {scalar_t__ bar0; } ;


 int iowrite32 (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void cobalt_write_bar0(struct cobalt *cobalt, u32 reg, u32 val)
{
 iowrite32(val, cobalt->bar0 + reg);
}
