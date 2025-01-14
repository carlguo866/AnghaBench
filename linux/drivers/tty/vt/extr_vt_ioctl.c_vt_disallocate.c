
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int port; } ;


 int EBUSY ;
 unsigned int MIN_NR_CONSOLES ;
 scalar_t__ VT_BUSY (unsigned int) ;
 int console_lock () ;
 int console_unlock () ;
 int kfree (struct vc_data*) ;
 int tty_port_destroy (int *) ;
 struct vc_data* vc_deallocate (unsigned int) ;

__attribute__((used)) static int vt_disallocate(unsigned int vc_num)
{
 struct vc_data *vc = ((void*)0);
 int ret = 0;

 console_lock();
 if (VT_BUSY(vc_num))
  ret = -EBUSY;
 else if (vc_num)
  vc = vc_deallocate(vc_num);
 console_unlock();

 if (vc && vc_num >= MIN_NR_CONSOLES) {
  tty_port_destroy(&vc->port);
  kfree(vc);
 }

 return ret;
}
