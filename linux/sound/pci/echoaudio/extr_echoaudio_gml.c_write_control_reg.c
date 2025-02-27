
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct echoaudio {TYPE_2__* comm_page; TYPE_1__* card; scalar_t__ digital_in_automute; } ;
typedef scalar_t__ __le32 ;
struct TYPE_4__ {scalar_t__ control_register; } ;
struct TYPE_3__ {int dev; } ;


 int DSP_VC_WRITE_CONTROL_REG ;
 int EIO ;
 int GML_DIGITAL_IN_AUTO_MUTE ;
 int clear_handshake (struct echoaudio*) ;
 scalar_t__ cpu_to_le32 (int ) ;
 int dev_dbg (int ,char*,int ) ;
 int send_vector (struct echoaudio*,int ) ;
 scalar_t__ wait_handshake (struct echoaudio*) ;

__attribute__((used)) static int write_control_reg(struct echoaudio *chip, u32 value, char force)
{
 __le32 reg_value;


 if (chip->digital_in_automute)
  value |= GML_DIGITAL_IN_AUTO_MUTE;
 else
  value &= ~GML_DIGITAL_IN_AUTO_MUTE;

 dev_dbg(chip->card->dev, "write_control_reg: 0x%x\n", value);


 reg_value = cpu_to_le32(value);
 if (reg_value != chip->comm_page->control_register || force) {
  if (wait_handshake(chip))
   return -EIO;
  chip->comm_page->control_register = reg_value;
  clear_handshake(chip);
  return send_vector(chip, DSP_VC_WRITE_CONTROL_REG);
 }
 return 0;
}
