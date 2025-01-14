
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint16_t ;
struct TYPE_9__ {int fr_c; } ;
struct TYPE_8__ {TYPE_1__* close; } ;
struct TYPE_7__ {scalar_t__ type; int group_number; int number; } ;
typedef TYPE_2__ Group_c ;
typedef TYPE_3__ Group_Chats ;


 scalar_t__ GROUPCHAT_CLOSE_ONLINE ;
 size_t MAX_GROUP_CONNECTIONS ;
 int PACKET_ID_MESSAGE_GROUPCHAT ;
 TYPE_2__* get_group_c (TYPE_3__ const*,int) ;
 scalar_t__ send_packet_group_peer (int ,int ,int ,int ,int const*,size_t) ;

__attribute__((used)) static unsigned int send_message_all_close(const Group_Chats *g_c, int groupnumber, const uint8_t *data,
        uint16_t length, int receiver)
{
    Group_c *g = get_group_c(g_c, groupnumber);

    if (!g)
        return 0;

    uint16_t i, sent = 0;

    for (i = 0; i < MAX_GROUP_CONNECTIONS; ++i) {
        if (g->close[i].type != GROUPCHAT_CLOSE_ONLINE)
            continue;

        if ((int)i == receiver)
            continue;

        if (send_packet_group_peer(g_c->fr_c, g->close[i].number, PACKET_ID_MESSAGE_GROUPCHAT, g->close[i].group_number, data,
                                   length))
            ++sent;
    }

    return sent;
}
