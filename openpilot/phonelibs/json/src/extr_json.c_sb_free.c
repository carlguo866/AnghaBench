
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int start; } ;
typedef TYPE_1__ SB ;


 int free (int ) ;

__attribute__((used)) static void sb_free(SB *sb)
{
 free(sb->start);
}
