
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __is_raid10_offset (int) ;
 int __raid10_near_copies (int) ;

__attribute__((used)) static bool __is_raid10_near(int layout)
{
 return !__is_raid10_offset(layout) && __raid10_near_copies(layout) > 1;
}
