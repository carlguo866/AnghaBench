
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ALIGN (long,int) ;

__attribute__((used)) static inline void *rtl8169_align(void *data)
{
 return (void *)ALIGN((long)data, 16);
}
