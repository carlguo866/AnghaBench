
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct m_can_classdev {int dummy; } ;


 int CCCR_NISO ;
 int ETIMEDOUT ;
 int M_CAN_CCCR ;
 int m_can_config_endisable (struct m_can_classdev*,int) ;
 int m_can_read (struct m_can_classdev*,int ) ;
 int m_can_write (struct m_can_classdev*,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static bool m_can_niso_supported(struct m_can_classdev *cdev)
{
 u32 cccr_reg, cccr_poll = 0;
 int niso_timeout = -ETIMEDOUT;
 int i;

 m_can_config_endisable(cdev, 1);
 cccr_reg = m_can_read(cdev, M_CAN_CCCR);
 cccr_reg |= CCCR_NISO;
 m_can_write(cdev, M_CAN_CCCR, cccr_reg);

 for (i = 0; i <= 10; i++) {
  cccr_poll = m_can_read(cdev, M_CAN_CCCR);
  if (cccr_poll == cccr_reg) {
   niso_timeout = 0;
   break;
  }

  usleep_range(1, 5);
 }


 cccr_reg &= ~(CCCR_NISO);
 m_can_write(cdev, M_CAN_CCCR, cccr_reg);

 m_can_config_endisable(cdev, 0);


 return !niso_timeout;
}
