
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct apple_gmux_data {int index_lock; scalar_t__ iostart; } ;


 scalar_t__ GMUX_PORT_VALUE ;
 scalar_t__ GMUX_PORT_WRITE ;
 int gmux_index_wait_complete (struct apple_gmux_data*) ;
 int gmux_index_wait_ready (struct apple_gmux_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static void gmux_index_write8(struct apple_gmux_data *gmux_data, int port,
         u8 val)
{
 mutex_lock(&gmux_data->index_lock);
 outb(val, gmux_data->iostart + GMUX_PORT_VALUE);
 gmux_index_wait_ready(gmux_data);
 outb(port & 0xff, gmux_data->iostart + GMUX_PORT_WRITE);
 gmux_index_wait_complete(gmux_data);
 mutex_unlock(&gmux_data->index_lock);
}
