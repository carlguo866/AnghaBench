
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dev; } ;
struct usb_serial {int dev; } ;
struct tty_struct {int dummy; } ;
typedef int speed_t ;


 scalar_t__ C_CRTSCTS (struct tty_struct*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MCT_U232_MAX_SIZE ;
 int MCT_U232_SET_BAUD_RATE_REQUEST ;
 int MCT_U232_SET_BAUD_RATE_SIZE ;
 int MCT_U232_SET_CTS_REQUEST ;
 int MCT_U232_SET_CTS_SIZE ;
 int MCT_U232_SET_REQUEST_TYPE ;
 int MCT_U232_SET_UNKNOWN1_REQUEST ;
 int MCT_U232_SET_UNKNOWN1_SIZE ;
 int WDR_TIMEOUT ;
 int dev_dbg (int *,char*,unsigned char,...) ;
 int dev_err (int *,char*,int ,int) ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int ,int ) ;
 unsigned int mct_u232_calculate_baud_rate (struct usb_serial*,int ,int *) ;
 int put_unaligned_le32 (unsigned int,unsigned char*) ;
 int tty_encode_baud_rate (struct tty_struct*,int ,int ) ;
 int usb_control_msg (int ,int ,int ,int ,int ,int ,unsigned char*,int ,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int mct_u232_set_baud_rate(struct tty_struct *tty,
 struct usb_serial *serial, struct usb_serial_port *port, speed_t value)
{
 unsigned int divisor;
 int rc;
 unsigned char *buf;
 unsigned char cts_enable_byte = 0;
 speed_t speed;

 buf = kmalloc(MCT_U232_MAX_SIZE, GFP_KERNEL);
 if (buf == ((void*)0))
  return -ENOMEM;

 divisor = mct_u232_calculate_baud_rate(serial, value, &speed);
 put_unaligned_le32(divisor, buf);
 rc = usb_control_msg(serial->dev, usb_sndctrlpipe(serial->dev, 0),
    MCT_U232_SET_BAUD_RATE_REQUEST,
    MCT_U232_SET_REQUEST_TYPE,
    0, 0, buf, MCT_U232_SET_BAUD_RATE_SIZE,
    WDR_TIMEOUT);
 if (rc < 0)
  dev_err(&port->dev, "Set BAUD RATE %d failed (error = %d)\n",
   value, rc);
 else
  tty_encode_baud_rate(tty, speed, speed);
 dev_dbg(&port->dev, "set_baud_rate: value: 0x%x, divisor: 0x%x\n", value, divisor);
 buf[0] = 0;
 rc = usb_control_msg(serial->dev, usb_sndctrlpipe(serial->dev, 0),
    MCT_U232_SET_UNKNOWN1_REQUEST,
    MCT_U232_SET_REQUEST_TYPE,
    0, 0, buf, MCT_U232_SET_UNKNOWN1_SIZE,
    WDR_TIMEOUT);
 if (rc < 0)
  dev_err(&port->dev, "Sending USB device request code %d "
   "failed (error = %d)\n", MCT_U232_SET_UNKNOWN1_REQUEST,
   rc);

 if (port && C_CRTSCTS(tty))
    cts_enable_byte = 1;

 dev_dbg(&port->dev, "set_baud_rate: send second control message, data = %02X\n",
  cts_enable_byte);
 buf[0] = cts_enable_byte;
 rc = usb_control_msg(serial->dev, usb_sndctrlpipe(serial->dev, 0),
   MCT_U232_SET_CTS_REQUEST,
   MCT_U232_SET_REQUEST_TYPE,
   0, 0, buf, MCT_U232_SET_CTS_SIZE,
   WDR_TIMEOUT);
 if (rc < 0)
  dev_err(&port->dev, "Sending USB device request code %d "
   "failed (error = %d)\n", MCT_U232_SET_CTS_REQUEST, rc);

 kfree(buf);
 return rc;
}
