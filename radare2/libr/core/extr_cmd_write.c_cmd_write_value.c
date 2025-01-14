
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ut8 ;
typedef scalar_t__ ut64 ;
typedef int ut32 ;
typedef int ut16 ;
struct TYPE_11__ {scalar_t__ value; } ;
struct TYPE_10__ {int io; int offset; TYPE_1__* file; TYPE_3__* num; int config; } ;
struct TYPE_9__ {int fd; } ;
typedef TYPE_2__ RCore ;


 int R_IO_SEEK_SET ;
 scalar_t__ UT16_MAX ;
 scalar_t__ UT32_MAX ;
 scalar_t__ UT64_32U ;
 scalar_t__ UT64_MAX ;
 scalar_t__ UT8_MAX ;
 int WSEEK (TYPE_2__*,int) ;
 int cmd_write_fail (TYPE_2__*) ;
 int help_msg_wv ;
 int r_config_get_i (int ,char*) ;
 int r_core_block_read (TYPE_2__*) ;
 int r_core_cmd_help (TYPE_2__*,int ) ;
 scalar_t__ r_io_seek (int ,int ,int ) ;
 int r_io_use_fd (int ,int ) ;
 int r_io_write (int ,int *,int) ;
 scalar_t__ r_num_math (TYPE_3__*,char const*) ;
 int r_write_ble16 (int *,int ,int) ;
 int r_write_ble32 (int *,int ,int) ;
 int r_write_ble64 (int *,scalar_t__,int) ;
 int r_write_ble8 (int *,int ) ;

__attribute__((used)) static void cmd_write_value (RCore *core, const char *input) {
 int type = 0;
 ut64 off = 0LL;
 ut8 buf[sizeof(ut64)];
 int wseek = r_config_get_i (core->config, "cfg.wseek");
 bool be = r_config_get_i (core->config, "cfg.bigendian");

 core->num->value = 0;
 if (!input) {
  return;
 }

 if (input[0])
 switch (input[1]) {
 case '?':
  r_core_cmd_help (core, help_msg_wv);
  return;
 case '1': type = 1; break;
 case '2': type = 2; break;
 case '4': type = 4; break;
 case '8': type = 8; break;
 }
 if (input && input[0] && input[1] && input[2]) {
  off = r_num_math (core->num, input+2);
 }
 if (core->file) {
  r_io_use_fd (core->io, core->file->fd);
 }
 ut64 res = r_io_seek (core->io, core->offset, R_IO_SEEK_SET);
 if (res == UT64_MAX) return;
 if (type == 0)
  type = (off&UT64_32U)? 8: 4;
 switch (type) {
 case 1:
  r_write_ble8 (buf, (ut8)(off & UT8_MAX));
  if (!r_io_write (core->io, buf, 1)) {
   cmd_write_fail (core);
  } else {
   WSEEK (core, 1);
  }
  break;
 case 2:
  r_write_ble16 (buf, (ut16)(off & UT16_MAX), be);
  if (!r_io_write (core->io, buf, 2)) {
   cmd_write_fail (core);
  } else {
   WSEEK (core, 2);
  }
  break;
 case 4:
  r_write_ble32 (buf, (ut32)(off & UT32_MAX), be);
  if (!r_io_write (core->io, buf, 4)) {
   cmd_write_fail (core);
  } else {
   WSEEK (core, 4);
  }
  break;
 case 8:
  r_write_ble64 (buf, off, be);
  if (!r_io_write (core->io, buf, 8)) {
   cmd_write_fail (core);
  } else {
   WSEEK (core, 8);
  }
  break;
 }
 r_core_block_read (core);
}
