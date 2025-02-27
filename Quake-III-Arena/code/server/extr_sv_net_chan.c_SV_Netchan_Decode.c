
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int readcount; int bit; int oob; int cursize; int* data; } ;
typedef TYPE_1__ msg_t ;
struct TYPE_7__ {int challenge; scalar_t__* reliableCommands; } ;
typedef TYPE_2__ client_t ;
typedef int byte ;


 int MAX_RELIABLE_COMMANDS ;
 int MSG_ReadLong (TYPE_1__*) ;
 int SV_DECODE_START ;

__attribute__((used)) static void SV_Netchan_Decode( client_t *client, msg_t *msg ) {
 int serverId, messageAcknowledge, reliableAcknowledge;
 int i, index, srdc, sbit, soob;
 byte key, *string;

        srdc = msg->readcount;
        sbit = msg->bit;
        soob = msg->oob;

        msg->oob = 0;

        serverId = MSG_ReadLong(msg);
 messageAcknowledge = MSG_ReadLong(msg);
 reliableAcknowledge = MSG_ReadLong(msg);

        msg->oob = soob;
        msg->bit = sbit;
        msg->readcount = srdc;

 string = (byte *)client->reliableCommands[ reliableAcknowledge & (MAX_RELIABLE_COMMANDS-1) ];
 index = 0;

 key = client->challenge ^ serverId ^ messageAcknowledge;
 for (i = msg->readcount + SV_DECODE_START; i < msg->cursize; i++) {

  if (!string[index])
   index = 0;
  if (string[index] > 127 || string[index] == '%') {
   key ^= '.' << (i & 1);
  }
  else {
   key ^= string[index] << (i & 1);
  }
  index++;

  *(msg->data + i) = *(msg->data + i) ^ key;
 }
}
