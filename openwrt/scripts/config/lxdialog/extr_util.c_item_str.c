
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* str; } ;
struct TYPE_4__ {TYPE_1__ node; } ;


 TYPE_2__* item_cur ;

const char *item_str(void)
{
 return item_cur->node.str;
}
