
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int offset; } ;


 int get_off_t (char*) ;
 TYPE_1__ in ;

__attribute__((used)) static void
f_skip(char *arg)
{

 in.offset = get_off_t(arg);
}
