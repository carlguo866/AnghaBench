
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static long math_div(long a, long b)
{
 return a / b - (a % b < 0);
}
