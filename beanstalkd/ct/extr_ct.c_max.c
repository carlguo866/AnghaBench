
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
max(int a, int b)
{
    if (a > b) {
        return a;
    }
    return b;
}
