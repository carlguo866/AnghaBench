
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udec3 {int x; int y; int z; int w; } ;
typedef int DWORD ;



__attribute__((used)) static struct udec3 dword_to_udec3(DWORD d)
{
    struct udec3 v;

    v.x = d & 0x3ff;
    v.y = (d & 0xffc00) >> 10;
    v.z = (d & 0x3ff00000) >> 20;
    v.w = (d & 0xc0000000) >> 30;

    return v;
}
