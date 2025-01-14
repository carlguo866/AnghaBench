
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int dummy; } ;


 int CONTROL_SHIFT ;
 int sddr09_readX (struct us_data*,int,unsigned long,int,int,unsigned char*,int) ;
 int usb_stor_dbg (struct us_data*,char*,int,int) ;

__attribute__((used)) static int
sddr09_read22(struct us_data *us, unsigned long fromaddress,
       int nr_of_pages, int pageshift, unsigned char *buf, int use_sg) {

 int bulklen = (nr_of_pages << pageshift) + (nr_of_pages << CONTROL_SHIFT);
 usb_stor_dbg(us, "reading %d pages, %d bytes\n", nr_of_pages, bulklen);
 return sddr09_readX(us, 2, fromaddress, nr_of_pages, bulklen,
       buf, use_sg);
}
