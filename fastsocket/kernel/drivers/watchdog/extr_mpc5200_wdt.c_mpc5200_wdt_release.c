
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpc5200_wdt {scalar_t__ count; } ;
struct inode {int dummy; } ;
struct file {struct mpc5200_wdt* private_data; } ;


 int clear_bit (int ,int *) ;
 int is_active ;
 int mpc5200_wdt_stop (struct mpc5200_wdt*) ;

__attribute__((used)) static int mpc5200_wdt_release(struct inode *inode, struct file *file)
{

 struct mpc5200_wdt *wdt = file->private_data;
 mpc5200_wdt_stop(wdt);
 wdt->count = 0;

 clear_bit(0, &is_active);
 return 0;
}
