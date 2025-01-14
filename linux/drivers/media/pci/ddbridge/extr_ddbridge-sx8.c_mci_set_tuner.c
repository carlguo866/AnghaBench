
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sx8_base {int * gain_mode; } ;
struct TYPE_4__ {size_t tuner; struct mci_base* base; } ;
struct sx8 {TYPE_2__ mci; } ;
struct TYPE_3__ {int flags; } ;
struct mci_command {size_t tuner; TYPE_1__ sx8_input_enable; int command; } ;
struct mci_base {int dummy; } ;
struct dvb_frontend {struct sx8* demodulator_priv; } ;
typedef int cmd ;


 int SX8_CMD_INPUT_DISABLE ;
 int SX8_CMD_INPUT_ENABLE ;
 int ddb_mci_cmd (TYPE_2__*,struct mci_command*,int *) ;
 int memset (struct mci_command*,int ,int) ;

__attribute__((used)) static int mci_set_tuner(struct dvb_frontend *fe, u32 tuner, u32 on)
{
 struct sx8 *state = fe->demodulator_priv;
 struct mci_base *mci_base = state->mci.base;
 struct sx8_base *sx8_base = (struct sx8_base *)mci_base;
 struct mci_command cmd;

 memset(&cmd, 0, sizeof(cmd));
 cmd.tuner = state->mci.tuner;
 cmd.command = on ? SX8_CMD_INPUT_ENABLE : SX8_CMD_INPUT_DISABLE;
 cmd.sx8_input_enable.flags = sx8_base->gain_mode[state->mci.tuner];
 return ddb_mci_cmd(&state->mci, &cmd, ((void*)0));
}
