
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * str; void* len; void* start; } ;
typedef TYPE_1__ strval ;
typedef void* UINT ;



__attribute__((used)) static inline void reader_init_strvalue(UINT start, UINT len, strval *v)
{
    v->start = start;
    v->len = len;
    v->str = ((void*)0);
}
