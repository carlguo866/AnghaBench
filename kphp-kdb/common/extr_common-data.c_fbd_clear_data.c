
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ fbd_binlog_name_hash ;
 scalar_t__ fbd_last_wptr ;
 scalar_t__ fbd_rptr ;
 scalar_t__ fbd_wptr ;

__attribute__((used)) static void fbd_clear_data (void) {
  fbd_rptr = fbd_wptr = 0;
  fbd_last_wptr = 0;
  fbd_binlog_name_hash = 0;
}
