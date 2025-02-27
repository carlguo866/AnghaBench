
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msp_state {int restart; int wq; scalar_t__ watch_stereo; int * kthread; } ;
struct i2c_client {int dummy; } ;


 int i2c_get_clientdata (struct i2c_client*) ;
 struct msp_state* to_state (int ) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void msp_wake_thread(struct i2c_client *client)
{
 struct msp_state *state = to_state(i2c_get_clientdata(client));

 if (((void*)0) == state->kthread)
  return;
 state->watch_stereo = 0;
 state->restart = 1;
 wake_up_interruptible(&state->wq);
}
