
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg {int type; } ;





__attribute__((used)) static bool
memcache_arithmetic(struct msg *r)
{
    switch (r->type) {
    case 128:
    case 129:
        return 1;

    default:
        break;
    }

    return 0;
}
