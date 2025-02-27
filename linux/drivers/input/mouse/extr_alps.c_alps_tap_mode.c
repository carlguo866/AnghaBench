
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2dev {int dummy; } ;
struct psmouse {struct ps2dev ps2dev; } ;


 int PSMOUSE_CMD_DISABLE ;
 int PSMOUSE_CMD_GETINFO ;
 int PSMOUSE_CMD_SETRATE ;
 int PSMOUSE_CMD_SETRES ;
 scalar_t__ alps_get_status (struct psmouse*,unsigned char*) ;
 scalar_t__ ps2_command (struct ps2dev*,unsigned char*,int) ;

__attribute__((used)) static int alps_tap_mode(struct psmouse *psmouse, int enable)
{
 struct ps2dev *ps2dev = &psmouse->ps2dev;
 int cmd = enable ? PSMOUSE_CMD_SETRATE : PSMOUSE_CMD_SETRES;
 unsigned char tap_arg = enable ? 0x0A : 0x00;
 unsigned char param[4];

 if (ps2_command(ps2dev, param, PSMOUSE_CMD_GETINFO) ||
     ps2_command(ps2dev, ((void*)0), PSMOUSE_CMD_DISABLE) ||
     ps2_command(ps2dev, ((void*)0), PSMOUSE_CMD_DISABLE) ||
     ps2_command(ps2dev, &tap_arg, cmd))
  return -1;

 if (alps_get_status(psmouse, param))
  return -1;

 return 0;
}
