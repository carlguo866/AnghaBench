
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ktime_get () ;
 int start ;

__attribute__((used)) static inline void start_timing(void)
{
 start = ktime_get();
}
