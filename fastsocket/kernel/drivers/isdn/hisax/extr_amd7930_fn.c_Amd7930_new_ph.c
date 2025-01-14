
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_char ;
struct TYPE_3__ {size_t old_state; size_t ph_state; } ;
struct TYPE_4__ {TYPE_1__ amd7930; } ;
struct IsdnCardState {int debug; TYPE_2__ dc; scalar_t__ tx_skb; } ;


 int Amd7930_get_state (struct IsdnCardState*) ;
 int Amd7930_ph_command (struct IsdnCardState*,int,char*) ;
 int CONFIRM ;
 int HW_DEACTIVATE ;
 int HW_INFO2 ;
 int HW_INFO4_P8 ;
 int HW_POWERUP ;
 int HW_RESET ;
 int HW_RSYNC ;
 int INDICATION ;
 int L1_DEB_ISAC ;
 int debugl1 (struct IsdnCardState*,char*,size_t,size_t,size_t,size_t) ;
 size_t* i430States ;
 int l1_msg (struct IsdnCardState*,int,int *) ;
 int* stateHelper ;
 int wByteAMD (struct IsdnCardState*,int,int) ;

__attribute__((used)) static void
Amd7930_new_ph(struct IsdnCardState *cs)
{
        u_char index = stateHelper[cs->dc.amd7930.old_state]*8 + stateHelper[cs->dc.amd7930.ph_state]-1;
        u_char message = i430States[index];

        if (cs->debug & L1_DEB_ISAC)
  debugl1(cs, "AMD7930: new_ph %d, old_ph %d, message %d, index %d",
                        cs->dc.amd7930.ph_state, cs->dc.amd7930.old_state, message & 0x0f, index);

        cs->dc.amd7930.old_state = cs->dc.amd7930.ph_state;


        if ((message & 0xf0) && (cs->tx_skb)) {
                wByteAMD(cs, 0x21, 0xC2);
                wByteAMD(cs, 0x21, 0x02);
        }

 switch (message & 0x0f) {

                case (1):
                        l1_msg(cs, HW_RESET | INDICATION, ((void*)0));
                        Amd7930_get_state(cs);
                        break;
                case (2):
                        l1_msg(cs, HW_DEACTIVATE | CONFIRM, ((void*)0));
                        break;
                case (3):
                        l1_msg(cs, HW_DEACTIVATE | INDICATION, ((void*)0));
                        break;
                case (4):
                        l1_msg(cs, HW_POWERUP | CONFIRM, ((void*)0));
                        Amd7930_ph_command(cs, 0x50, "HW_ENABLE REQUEST");
                        break;
                case (5):
   l1_msg(cs, HW_RSYNC | INDICATION, ((void*)0));
                        break;
                case (6):
   l1_msg(cs, HW_INFO4_P8 | INDICATION, ((void*)0));
                        break;
                case (7):
   l1_msg(cs, HW_RSYNC | INDICATION, ((void*)0));
   l1_msg(cs, HW_INFO4_P8 | INDICATION, ((void*)0));
                        break;
                case (8):
                        l1_msg(cs, HW_POWERUP | CONFIRM, ((void*)0));

                case (9):
                        Amd7930_ph_command(cs, 0x40, "HW_ENABLE REQ cleared if set");
   l1_msg(cs, HW_RSYNC | INDICATION, ((void*)0));
   l1_msg(cs, HW_INFO2 | INDICATION, ((void*)0));
   l1_msg(cs, HW_INFO4_P8 | INDICATION, ((void*)0));
                        break;
                case (10):
                        Amd7930_ph_command(cs, 0x40, "T3 expired, HW_ENABLE REQ cleared");
                        cs->dc.amd7930.old_state = 3;
                        break;
                case (11):
   l1_msg(cs, HW_INFO2 | INDICATION, ((void*)0));
                        break;
  default:
   break;
 }
}
