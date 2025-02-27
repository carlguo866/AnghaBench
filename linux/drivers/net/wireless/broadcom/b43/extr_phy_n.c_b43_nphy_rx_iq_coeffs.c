
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dummy; } ;
struct b43_phy_n_iq_comp {void* b1; void* a1; void* b0; void* a0; } ;


 int B43_NPHY_C1_RXIQ_COMPA0 ;
 int B43_NPHY_C1_RXIQ_COMPB0 ;
 int B43_NPHY_C2_RXIQ_COMPA1 ;
 int B43_NPHY_C2_RXIQ_COMPB1 ;
 void* b43_phy_read (struct b43_wldev*,int ) ;
 int b43_phy_write (struct b43_wldev*,int ,void*) ;

__attribute__((used)) static void b43_nphy_rx_iq_coeffs(struct b43_wldev *dev, bool write,
     struct b43_phy_n_iq_comp *pcomp)
{
 if (write) {
  b43_phy_write(dev, B43_NPHY_C1_RXIQ_COMPA0, pcomp->a0);
  b43_phy_write(dev, B43_NPHY_C1_RXIQ_COMPB0, pcomp->b0);
  b43_phy_write(dev, B43_NPHY_C2_RXIQ_COMPA1, pcomp->a1);
  b43_phy_write(dev, B43_NPHY_C2_RXIQ_COMPB1, pcomp->b1);
 } else {
  pcomp->a0 = b43_phy_read(dev, B43_NPHY_C1_RXIQ_COMPA0);
  pcomp->b0 = b43_phy_read(dev, B43_NPHY_C1_RXIQ_COMPB0);
  pcomp->a1 = b43_phy_read(dev, B43_NPHY_C2_RXIQ_COMPA1);
  pcomp->b1 = b43_phy_read(dev, B43_NPHY_C2_RXIQ_COMPB1);
 }
}
