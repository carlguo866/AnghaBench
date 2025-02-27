
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct usb_ftdi {char* bulk_in_buffer; TYPE_1__* udev; int bulk_in_size; int bulk_in_endpointAddr; } ;
typedef int diag ;
struct TYPE_3__ {int dev; } ;


 int EFAULT ;
 int ENOMEM ;
 int ETIMEDOUT ;
 int dev_err (int *,char*,...) ;
 int sprintf (char*,char*,...) ;
 int usb_bulk_msg (TYPE_1__*,int ,char*,int ,int*,int) ;
 int usb_rcvbulkpipe (TYPE_1__*,int ) ;

__attribute__((used)) static int ftdi_elan_flush_input_fifo(struct usb_ftdi *ftdi)
{
        int retry_on_empty = 10;
        int retry_on_timeout = 5;
        int retry_on_status = 20;
      more:{
                int packet_bytes = 0;
                int retval = usb_bulk_msg(ftdi->udev,
                        usb_rcvbulkpipe(ftdi->udev, ftdi->bulk_in_endpointAddr),
                         ftdi->bulk_in_buffer, ftdi->bulk_in_size,
                        &packet_bytes, 100);
                if (packet_bytes > 2) {
                        char diag[30 *3 + 4];
                        char *d = diag;
                        int m = (sizeof(diag) - 1) / 3;
                        char *b = ftdi->bulk_in_buffer;
                        int bytes_read = 0;
                        diag[0] = 0;
                        while (packet_bytes-- > 0) {
                                char c = *b++;
                                if (bytes_read < m) {
                                        d += sprintf(d, " %02X",
                                                0x000000FF & c);
                                } else if (bytes_read > m) {
                                } else
                                        d += sprintf(d, " ..");
                                bytes_read += 1;
                                continue;
                        }
                        goto more;
                } else if (packet_bytes > 1) {
                        char s1 = ftdi->bulk_in_buffer[0];
                        char s2 = ftdi->bulk_in_buffer[1];
                        if (s1 == 0x31 && s2 == 0x60) {
                                return 0;
                        } else if (retry_on_status-- > 0) {
                                goto more;
                        } else {
                                dev_err(&ftdi->udev->dev, "STATUS ERROR retry l"
                                        "imit reached\n");
                                return -EFAULT;
                        }
                } else if (packet_bytes > 0) {
                        char b1 = ftdi->bulk_in_buffer[0];
                        dev_err(&ftdi->udev->dev, "only one byte flushed from F"
                                "TDI = %02X\n", b1);
                        if (retry_on_status-- > 0) {
                                goto more;
                        } else {
                                dev_err(&ftdi->udev->dev, "STATUS ERROR retry l"
                                        "imit reached\n");
                                return -EFAULT;
                        }
                } else if (retval == -ETIMEDOUT) {
                        if (retry_on_timeout-- > 0) {
                                goto more;
                        } else {
                                dev_err(&ftdi->udev->dev, "TIMED OUT retry limi"
                                        "t reached\n");
                                return -ENOMEM;
                        }
                } else if (retval == 0) {
                        if (retry_on_empty-- > 0) {
                                goto more;
                        } else {
                                dev_err(&ftdi->udev->dev, "empty packet retry l"
                                        "imit reached\n");
                                return -ENOMEM;
                        }
                } else {
                        dev_err(&ftdi->udev->dev, "error = %d\n", retval);
                        return retval;
                }
        }
        return -1;
}
