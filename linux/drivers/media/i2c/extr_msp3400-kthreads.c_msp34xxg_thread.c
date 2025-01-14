
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msp_state {scalar_t__ mode; int std; int acb; int watch_stereo; int detected_std; scalar_t__ force_btsc; scalar_t__ radio; scalar_t__ scan_in_progress; scalar_t__ restart; } ;
struct i2c_client {int dev; } ;


 scalar_t__ MSP_MODE_EXTERN ;
 int V4L2_STD_ALL ;
 int dev_dbg_lvl (int *,int,int ,char*,...) ;
 int i2c_get_clientdata (struct i2c_client*) ;
 scalar_t__ kthread_should_stop () ;
 int msp34xxg_reset (struct i2c_client*) ;
 int msp_debug ;
 int msp_read_dem (struct i2c_client*,int) ;
 scalar_t__ msp_sleep (struct msp_state*,int) ;
 int msp_standard ;
 int msp_standard_std (int) ;
 int msp_standard_std_name (int) ;
 int msp_update_volume (struct msp_state*) ;
 int msp_write_dem (struct i2c_client*,int,int) ;
 scalar_t__ msp_write_dsp (struct i2c_client*,int,int) ;
 int set_freezable () ;
 struct msp_state* to_state (int ) ;
 int watch_stereo (struct i2c_client*) ;

int msp34xxg_thread(void *data)
{
 struct i2c_client *client = data;
 struct msp_state *state = to_state(i2c_get_clientdata(client));
 int val, i;

 dev_dbg_lvl(&client->dev, 1, msp_debug, "msp34xxg daemon started\n");
 state->detected_std = V4L2_STD_ALL;
 set_freezable();
 for (;;) {
  dev_dbg_lvl(&client->dev, 2, msp_debug, "msp34xxg thread: sleep\n");
  msp_sleep(state, -1);
  dev_dbg_lvl(&client->dev, 2, msp_debug, "msp34xxg thread: wakeup\n");

restart:
  dev_dbg_lvl(&client->dev, 1, msp_debug, "thread: restart scan\n");
  state->restart = 0;
  if (kthread_should_stop())
   break;

  if (state->mode == MSP_MODE_EXTERN) {

   dev_dbg_lvl(&client->dev, 1, msp_debug,
    "thread: no carrier scan\n");
   state->scan_in_progress = 0;
   msp_update_volume(state);
   continue;
  }


  msp34xxg_reset(client);
  state->std = state->radio ? 0x40 :
   (state->force_btsc && msp_standard == 1) ? 32 : msp_standard;
  msp_write_dem(client, 0x20, state->std);

  if (state->std != 1)
   goto unmute;


  dev_dbg_lvl(&client->dev, 1, msp_debug,
   "started autodetect, waiting for result\n");
  for (i = 0; i < 10; i++) {
   if (msp_sleep(state, 100))
    goto restart;


   val = msp_read_dem(client, 0x7e);
   if (val < 0x07ff) {
    state->std = val;
    break;
   }
   dev_dbg_lvl(&client->dev, 2, msp_debug,
    "detection still in progress\n");
  }
  if (state->std == 1) {
   dev_dbg_lvl(&client->dev, 1, msp_debug,
    "detection still in progress after 10 tries. giving up.\n");
   continue;
  }

unmute:
  dev_dbg_lvl(&client->dev, 1, msp_debug,
   "detected standard: %s (0x%04x)\n",
   msp_standard_std_name(state->std), state->std);
  state->detected_std = msp_standard_std(state->std);

  if (state->std == 9) {

   msp_write_dsp(client, 0x0e, 0x7c00);
  }


  msp_update_volume(state);


  if (msp_write_dsp(client, 0x13, state->acb))
   return -1;



  if (state->std != 0x20)
   continue;

  state->watch_stereo = 1;



  watch_stereo(client);
  while (state->watch_stereo) {
   watch_stereo(client);
   if (msp_sleep(state, 5000))
    goto restart;
  }
 }
 dev_dbg_lvl(&client->dev, 1, msp_debug, "thread: exit\n");
 return 0;
}
