
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2dev {int dummy; } ;
struct psmouse {struct ps2dev ps2dev; struct alps_data* private; } ;
struct alps_data {int flags; } ;


 int ALPS_DUALPOINT ;
 int ALPS_REG_BASE_PINNACLE ;
 int EIO ;
 int PSMOUSE_CMD_ENABLE ;
 int PSMOUSE_CMD_SETRATE ;
 scalar_t__ __alps_command_mode_write_reg (struct psmouse*,int) ;
 scalar_t__ alps_absolute_mode_v3 (struct psmouse*) ;
 int alps_command_mode_read_reg (struct psmouse*,int) ;
 scalar_t__ alps_command_mode_write_reg (struct psmouse*,int,int) ;
 scalar_t__ alps_enter_command_mode (struct psmouse*) ;
 int alps_exit_command_mode (struct psmouse*) ;
 int alps_setup_trackstick_v3 (struct psmouse*,int ) ;
 scalar_t__ ps2_command (struct ps2dev*,unsigned char*,int ) ;
 int psmouse_err (struct psmouse*,char*) ;

__attribute__((used)) static int alps_hw_init_v3(struct psmouse *psmouse)
{
 struct alps_data *priv = psmouse->private;
 struct ps2dev *ps2dev = &psmouse->ps2dev;
 int reg_val;
 unsigned char param[4];

 if ((priv->flags & ALPS_DUALPOINT) &&
     alps_setup_trackstick_v3(psmouse, ALPS_REG_BASE_PINNACLE) == -EIO)
  goto error;

 if (alps_enter_command_mode(psmouse) ||
     alps_absolute_mode_v3(psmouse)) {
  psmouse_err(psmouse, "Failed to enter absolute mode\n");
  goto error;
 }

 reg_val = alps_command_mode_read_reg(psmouse, 0x0006);
 if (reg_val == -1)
  goto error;
 if (__alps_command_mode_write_reg(psmouse, reg_val | 0x01))
  goto error;

 reg_val = alps_command_mode_read_reg(psmouse, 0x0007);
 if (reg_val == -1)
  goto error;
 if (__alps_command_mode_write_reg(psmouse, reg_val | 0x01))
  goto error;

 if (alps_command_mode_read_reg(psmouse, 0x0144) == -1)
  goto error;
 if (__alps_command_mode_write_reg(psmouse, 0x04))
  goto error;

 if (alps_command_mode_read_reg(psmouse, 0x0159) == -1)
  goto error;
 if (__alps_command_mode_write_reg(psmouse, 0x03))
  goto error;

 if (alps_command_mode_read_reg(psmouse, 0x0163) == -1)
  goto error;
 if (alps_command_mode_write_reg(psmouse, 0x0163, 0x03))
  goto error;

 if (alps_command_mode_read_reg(psmouse, 0x0162) == -1)
  goto error;
 if (alps_command_mode_write_reg(psmouse, 0x0162, 0x04))
  goto error;

 alps_exit_command_mode(psmouse);


 param[0] = 0x64;
 if (ps2_command(ps2dev, param, PSMOUSE_CMD_SETRATE) ||
     ps2_command(ps2dev, ((void*)0), PSMOUSE_CMD_ENABLE)) {
  psmouse_err(psmouse, "Failed to enable data reporting\n");
  return -1;
 }

 return 0;

error:





 alps_exit_command_mode(psmouse);
 return -1;
}
