
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {scalar_t__ status; } ;
struct TYPE_6__ {int num_chats; TYPE_3__* chats; } ;
typedef int Group_c ;
typedef TYPE_1__ Group_Chats ;


 scalar_t__ GROUPCHAT_STATUS_NONE ;
 scalar_t__ groupnumber_not_valid (TYPE_1__*,int) ;
 int realloc_groupchats (TYPE_1__*,int) ;
 int sodium_memzero (TYPE_3__*,int) ;

__attribute__((used)) static int wipe_group_chat(Group_Chats *g_c, int groupnumber)
{
    if (groupnumber_not_valid(g_c, groupnumber))
        return -1;

    uint32_t i;
    sodium_memzero(&(g_c->chats[groupnumber]), sizeof(Group_c));

    for (i = g_c->num_chats; i != 0; --i) {
        if (g_c->chats[i - 1].status != GROUPCHAT_STATUS_NONE)
            break;
    }

    if (g_c->num_chats != i) {
        g_c->num_chats = i;
        realloc_groupchats(g_c, g_c->num_chats);
    }

    return 0;
}
