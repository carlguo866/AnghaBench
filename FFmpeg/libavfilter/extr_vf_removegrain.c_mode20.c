
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int mode20(int c, int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
    const int sum = a1 + a2 + a3 + a4 + c + a5 + a6 + a7 + a8;
    const int val = (sum + 4) / 9;

    return val;
}
