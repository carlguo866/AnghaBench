
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adv7180_state {int csi_client; } ;


 int i2c_smbus_write_byte_data (int ,unsigned int,unsigned int) ;

__attribute__((used)) static int adv7180_csi_write(struct adv7180_state *state, unsigned int reg,
 unsigned int value)
{
 return i2c_smbus_write_byte_data(state->csi_client, reg, value);
}
