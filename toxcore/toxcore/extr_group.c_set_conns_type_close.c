
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef size_t uint32_t ;
struct TYPE_9__ {int fr_c; } ;
struct TYPE_8__ {TYPE_1__* close; int identifier; } ;
struct TYPE_7__ {scalar_t__ type; unsigned int number; } ;
typedef TYPE_2__ Group_c ;
typedef TYPE_3__ Group_Chats ;


 scalar_t__ GROUPCHAT_CLOSE_NONE ;
 scalar_t__ GROUPCHAT_CLOSE_ONLINE ;
 size_t MAX_GROUP_CONNECTIONS ;
 TYPE_2__* get_group_c (TYPE_3__*,int) ;
 int send_packet_online (int ,int,int,int ) ;

__attribute__((used)) static void set_conns_type_close(Group_Chats *g_c, int groupnumber, int friendcon_id, uint8_t type)
{
    Group_c *g = get_group_c(g_c, groupnumber);

    if (!g)
        return;

    uint32_t i;

    for (i = 0; i < MAX_GROUP_CONNECTIONS; ++i) {
        if (g->close[i].type == GROUPCHAT_CLOSE_NONE)
            continue;

        if (g->close[i].number != (unsigned int)friendcon_id)
            continue;

        if (type == GROUPCHAT_CLOSE_ONLINE) {
            send_packet_online(g_c->fr_c, friendcon_id, groupnumber, g->identifier);
        } else {
            g->close[i].type = type;
        }
    }
}
