
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_sliced_vbi_data {int line; scalar_t__ field; int* data; } ;
struct saa7127_state {int vps_enable; int* vps_data; } ;


 int EINVAL ;
 int debug ;
 int saa7127_write (struct v4l2_subdev*,int,int) ;
 struct saa7127_state* to_state (struct v4l2_subdev*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,...) ;

__attribute__((used)) static int saa7127_set_vps(struct v4l2_subdev *sd, const struct v4l2_sliced_vbi_data *data)
{
 struct saa7127_state *state = to_state(sd);
 int enable = (data->line != 0);

 if (enable && (data->field != 0 || data->line != 16))
  return -EINVAL;
 if (state->vps_enable != enable) {
  v4l2_dbg(1, debug, sd, "Turn VPS Signal %s\n", enable ? "on" : "off");
  saa7127_write(sd, 0x54, enable << 7);
  state->vps_enable = enable;
 }
 if (!enable)
  return 0;

 state->vps_data[0] = data->data[2];
 state->vps_data[1] = data->data[8];
 state->vps_data[2] = data->data[9];
 state->vps_data[3] = data->data[10];
 state->vps_data[4] = data->data[11];
 v4l2_dbg(1, debug, sd, "Set VPS data %02x %02x %02x %02x %02x\n",
  state->vps_data[0], state->vps_data[1],
  state->vps_data[2], state->vps_data[3],
  state->vps_data[4]);
 saa7127_write(sd, 0x55, state->vps_data[0]);
 saa7127_write(sd, 0x56, state->vps_data[1]);
 saa7127_write(sd, 0x57, state->vps_data[2]);
 saa7127_write(sd, 0x58, state->vps_data[3]);
 saa7127_write(sd, 0x59, state->vps_data[4]);
 return 0;
}
