
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 scalar_t__ jiffies ;
 int parkbd_buffer ;
 int parkbd_counter ;
 scalar_t__ parkbd_last ;
 int parkbd_mode ;
 int parkbd_port ;
 int parkbd_readlines () ;
 int parkbd_writelines (int) ;
 scalar_t__ parkbd_writing ;
 int serio_interrupt (int ,int,int ) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static void parkbd_interrupt(void *dev_id)
{

 if (parkbd_writing) {

  if (parkbd_counter && ((parkbd_counter == 11) || time_after(jiffies, parkbd_last + HZ/100))) {
   parkbd_counter = 0;
   parkbd_buffer = 0;
   parkbd_writing = 0;
   parkbd_writelines(3);
   return;
  }

  parkbd_writelines(((parkbd_buffer >> parkbd_counter++) & 1) | 2);

  if (parkbd_counter == 11) {
   parkbd_counter = 0;
   parkbd_buffer = 0;
   parkbd_writing = 0;
   parkbd_writelines(3);
  }

 } else {

  if ((parkbd_counter == parkbd_mode + 10) || time_after(jiffies, parkbd_last + HZ/100)) {
   parkbd_counter = 0;
   parkbd_buffer = 0;
  }

  parkbd_buffer |= (parkbd_readlines() >> 1) << parkbd_counter++;

  if (parkbd_counter == parkbd_mode + 10)
   serio_interrupt(parkbd_port, (parkbd_buffer >> (2 - parkbd_mode)) & 0xff, 0);
 }

 parkbd_last = jiffies;
}
