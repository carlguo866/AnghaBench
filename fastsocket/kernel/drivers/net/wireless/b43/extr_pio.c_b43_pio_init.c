
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_pio {int rx_queue; void* tx_queue_mcast; void* tx_queue_AC_VO; void* tx_queue_AC_VI; void* tx_queue_AC_BE; void* tx_queue_AC_BK; } ;
struct b43_wldev {int wl; struct b43_pio pio; } ;


 int B43_MACCTL_BE ;
 int B43_MMIO_MACCTL ;
 int B43_SHM_SHARED ;
 int B43_SHM_SH_RXPADOFF ;
 int ENOMEM ;
 int b43_read32 (struct b43_wldev*,int ) ;
 int b43_setup_pioqueue_rx (struct b43_wldev*,int ) ;
 void* b43_setup_pioqueue_tx (struct b43_wldev*,int) ;
 int b43_shm_write16 (struct b43_wldev*,int ,int ,int ) ;
 int b43_write32 (struct b43_wldev*,int ,int) ;
 int b43dbg (int ,char*) ;
 int destroy_queue_tx (struct b43_pio*,int ) ;
 int tx_queue_AC_BE ;
 int tx_queue_AC_BK ;
 int tx_queue_AC_VI ;
 int tx_queue_AC_VO ;
 int tx_queue_mcast ;

int b43_pio_init(struct b43_wldev *dev)
{
 struct b43_pio *pio = &dev->pio;
 int err = -ENOMEM;

 b43_write32(dev, B43_MMIO_MACCTL, b43_read32(dev, B43_MMIO_MACCTL)
      & ~B43_MACCTL_BE);
 b43_shm_write16(dev, B43_SHM_SHARED, B43_SHM_SH_RXPADOFF, 0);

 pio->tx_queue_AC_BK = b43_setup_pioqueue_tx(dev, 0);
 if (!pio->tx_queue_AC_BK)
  goto out;

 pio->tx_queue_AC_BE = b43_setup_pioqueue_tx(dev, 1);
 if (!pio->tx_queue_AC_BE)
  goto err_destroy_bk;

 pio->tx_queue_AC_VI = b43_setup_pioqueue_tx(dev, 2);
 if (!pio->tx_queue_AC_VI)
  goto err_destroy_be;

 pio->tx_queue_AC_VO = b43_setup_pioqueue_tx(dev, 3);
 if (!pio->tx_queue_AC_VO)
  goto err_destroy_vi;

 pio->tx_queue_mcast = b43_setup_pioqueue_tx(dev, 4);
 if (!pio->tx_queue_mcast)
  goto err_destroy_vo;

 pio->rx_queue = b43_setup_pioqueue_rx(dev, 0);
 if (!pio->rx_queue)
  goto err_destroy_mcast;

 b43dbg(dev->wl, "PIO initialized\n");
 err = 0;
out:
 return err;

err_destroy_mcast:
 destroy_queue_tx(pio, tx_queue_mcast);
err_destroy_vo:
 destroy_queue_tx(pio, tx_queue_AC_VO);
err_destroy_vi:
 destroy_queue_tx(pio, tx_queue_AC_VI);
err_destroy_be:
 destroy_queue_tx(pio, tx_queue_AC_BE);
err_destroy_bk:
 destroy_queue_tx(pio, tx_queue_AC_BK);
 return err;
}
