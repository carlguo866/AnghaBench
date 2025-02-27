
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lgdt3306a_state {int frontend; } ;
struct i2c_mux_core {int dummy; } ;
struct i2c_client {int dummy; } ;


 struct lgdt3306a_state* i2c_get_clientdata (struct i2c_client*) ;
 struct i2c_client* i2c_mux_priv (struct i2c_mux_core*) ;
 int lgdt3306a_i2c_gate_ctrl (int *,int) ;

__attribute__((used)) static int lgdt3306a_select(struct i2c_mux_core *muxc, u32 chan)
{
 struct i2c_client *client = i2c_mux_priv(muxc);
 struct lgdt3306a_state *state = i2c_get_clientdata(client);

 return lgdt3306a_i2c_gate_ctrl(&state->frontend, 1);
}
