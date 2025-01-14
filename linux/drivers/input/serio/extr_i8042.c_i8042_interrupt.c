
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dummy; } ;
struct i8042_port {int driver_bound; struct serio* serio; scalar_t__ exists; } ;
typedef int irqreturn_t ;


 int HZ ;
 unsigned int I8042_AUX_PORT_NO ;
 unsigned int I8042_KBD_PORT_NO ;
 unsigned char I8042_MUX_PORT_NO ;
 unsigned char I8042_STR_AUXDATA ;
 unsigned char I8042_STR_MUXERR ;
 unsigned char I8042_STR_OBF ;
 unsigned char I8042_STR_PARITY ;
 unsigned char I8042_STR_TIMEOUT ;
 int IRQ_RETVAL (int) ;
 unsigned int SERIO_PARITY ;
 unsigned int SERIO_TIMEOUT ;
 int dbg (char*,unsigned char,...) ;
 int filter_dbg (int ,unsigned char,char*,unsigned int,int,char*,char*) ;
 int i8042_filter (unsigned char,unsigned char,struct serio*) ;
 int i8042_lock ;
 scalar_t__ i8042_mux_present ;
 int i8042_notimeout ;
 struct i8042_port* i8042_ports ;
 unsigned char i8042_read_data () ;
 unsigned char i8042_read_status () ;
 unsigned long jiffies ;
 scalar_t__ likely (int ) ;
 int serio_interrupt (struct serio*,unsigned char,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int time_before (unsigned long,unsigned long) ;
 scalar_t__ unlikely (unsigned char) ;

__attribute__((used)) static irqreturn_t i8042_interrupt(int irq, void *dev_id)
{
 struct i8042_port *port;
 struct serio *serio;
 unsigned long flags;
 unsigned char str, data;
 unsigned int dfl;
 unsigned int port_no;
 bool filtered;
 int ret = 1;

 spin_lock_irqsave(&i8042_lock, flags);

 str = i8042_read_status();
 if (unlikely(~str & I8042_STR_OBF)) {
  spin_unlock_irqrestore(&i8042_lock, flags);
  if (irq)
   dbg("Interrupt %d, without any data\n", irq);
  ret = 0;
  goto out;
 }

 data = i8042_read_data();

 if (i8042_mux_present && (str & I8042_STR_AUXDATA)) {
  static unsigned long last_transmit;
  static unsigned char last_str;

  dfl = 0;
  if (str & I8042_STR_MUXERR) {
   dbg("MUX error, status is %02x, data is %02x\n",
       str, data);
   switch (data) {
    default:
     if (time_before(jiffies, last_transmit + HZ/10)) {
      str = last_str;
      break;
     }

    case 0xfc:
    case 0xfd:
    case 0xfe: dfl = SERIO_TIMEOUT; data = 0xfe; break;
    case 0xff: dfl = SERIO_PARITY; data = 0xfe; break;
   }
  }

  port_no = I8042_MUX_PORT_NO + ((str >> 6) & 3);
  last_str = str;
  last_transmit = jiffies;
 } else {

  dfl = ((str & I8042_STR_PARITY) ? SERIO_PARITY : 0) |
        ((str & I8042_STR_TIMEOUT && !i8042_notimeout) ? SERIO_TIMEOUT : 0);

  port_no = (str & I8042_STR_AUXDATA) ?
    I8042_AUX_PORT_NO : I8042_KBD_PORT_NO;
 }

 port = &i8042_ports[port_no];
 serio = port->exists ? port->serio : ((void*)0);

 filter_dbg(port->driver_bound, data, "<- i8042 (interrupt, %d, %d%s%s)\n",
     port_no, irq,
     dfl & SERIO_PARITY ? ", bad parity" : "",
     dfl & SERIO_TIMEOUT ? ", timeout" : "");

 filtered = i8042_filter(data, str, serio);

 spin_unlock_irqrestore(&i8042_lock, flags);

 if (likely(serio && !filtered))
  serio_interrupt(serio, data, dfl);

 out:
 return IRQ_RETVAL(ret);
}
