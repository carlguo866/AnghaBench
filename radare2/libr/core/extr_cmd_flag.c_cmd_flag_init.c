
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;


 int DEFINE_CMD_DESCRIPTOR (int *,int ) ;
 int f ;
 int fc ;
 int fd ;
 int fs ;
 int fz ;

__attribute__((used)) static void cmd_flag_init(RCore *core) {
 DEFINE_CMD_DESCRIPTOR (core, f);
 DEFINE_CMD_DESCRIPTOR (core, fc);
 DEFINE_CMD_DESCRIPTOR (core, fd);
 DEFINE_CMD_DESCRIPTOR (core, fs);
 DEFINE_CMD_DESCRIPTOR (core, fz);
}
