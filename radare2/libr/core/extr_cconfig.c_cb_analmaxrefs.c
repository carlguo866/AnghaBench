
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int i_value; } ;
struct TYPE_5__ {TYPE_1__* anal; } ;
struct TYPE_4__ {int maxreflines; } ;
typedef TYPE_2__ RCore ;
typedef TYPE_3__ RConfigNode ;



__attribute__((used)) static bool cb_analmaxrefs(void *user, void *data) {
 RCore *core = (RCore*) user;
 RConfigNode *node = (RConfigNode*) data;
 core->anal->maxreflines = node->i_value;
 return 1;
}
