
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct cp_private {TYPE_2__* dev; } ;
struct TYPE_3__ {int rx_fifo_errors; int rx_length_errors; int rx_crc_errors; int rx_frame_errors; int rx_errors; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;


 int FirstFrag ;
 int LastFrag ;
 int RxErrCRC ;
 int RxErrFIFO ;
 int RxErrFrame ;
 int RxErrLong ;
 int RxErrRunt ;
 int netif_dbg (struct cp_private*,int ,TYPE_2__*,char*,unsigned int,int,int) ;
 int rx_err ;

__attribute__((used)) static void cp_rx_err_acct (struct cp_private *cp, unsigned rx_tail,
       u32 status, u32 len)
{
 netif_dbg(cp, rx_err, cp->dev, "rx err, slot %d status 0x%x len %d\n",
    rx_tail, status, len);
 cp->dev->stats.rx_errors++;
 if (status & RxErrFrame)
  cp->dev->stats.rx_frame_errors++;
 if (status & RxErrCRC)
  cp->dev->stats.rx_crc_errors++;
 if ((status & RxErrRunt) || (status & RxErrLong))
  cp->dev->stats.rx_length_errors++;
 if ((status & (FirstFrag | LastFrag)) != (FirstFrag | LastFrag))
  cp->dev->stats.rx_length_errors++;
 if (status & RxErrFIFO)
  cp->dev->stats.rx_fifo_errors++;
}
