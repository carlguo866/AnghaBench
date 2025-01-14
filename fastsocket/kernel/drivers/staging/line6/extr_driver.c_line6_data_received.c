
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_line6_variax {int dummy; } ;
struct usb_line6_pod {int dummy; } ;
struct usb_line6 {int message_length; int interface_number; int ifcdev; TYPE_3__* usbdev; int buffer_message; TYPE_1__* line6midi; } ;
struct urb {int actual_length; int transfer_buffer; int status; scalar_t__ context; } ;
struct MidiBuffer {int dummy; } ;
struct TYPE_5__ {int idProduct; } ;
struct TYPE_6__ {TYPE_2__ descriptor; } ;
struct TYPE_4__ {int midi_mask_receive; struct MidiBuffer midibuf_in; } ;


 int DEBUG_MESSAGES (int ) ;
 int ESHUTDOWN ;
 int LINE6_MESSAGE_MAXLEN ;
 int MISSING_CASE ;


 int dev_err (int ,char*,int,...) ;
 int line6_dump_urb (struct urb*) ;
 int line6_midi_receive (struct usb_line6*,int ,int) ;
 int line6_start_listen (struct usb_line6*) ;
 int line6_write_hexdump (struct usb_line6*,char,int ,int) ;
 int midibuf_ignore (struct MidiBuffer*,int) ;
 int midibuf_read (struct MidiBuffer*,int ,int ) ;
 scalar_t__ midibuf_skip_message (struct MidiBuffer*,int ) ;
 int midibuf_write (struct MidiBuffer*,int ,int) ;
 int pod_process_message (struct usb_line6_pod*) ;
 int variax_process_message (struct usb_line6_variax*) ;

__attribute__((used)) static void line6_data_received(struct urb *urb)
{
 struct usb_line6 *line6 = (struct usb_line6 *)urb->context;
 struct MidiBuffer *mb = &line6->line6midi->midibuf_in;
 int done;

 if (urb->status == -ESHUTDOWN)
  return;





 done = midibuf_write(mb, urb->transfer_buffer, urb->actual_length);

 if (done < urb->actual_length) {
  midibuf_ignore(mb, done);
  DEBUG_MESSAGES(dev_err(line6->ifcdev, "%d %d buffer overflow - message skipped\n", done, urb->actual_length));
 }

 for (;;) {
  done = midibuf_read(mb, line6->buffer_message, LINE6_MESSAGE_MAXLEN);

  if (done == 0)
   break;


  if (midibuf_skip_message(mb, line6->line6midi->midi_mask_receive))
   continue;

  line6->message_length = done;



  line6_midi_receive(line6, line6->buffer_message, done);

  switch (line6->usbdev->descriptor.idProduct) {
  case 137:
  case 136:
  case 135:
  case 133:
  case 131:
  case 134:
   pod_process_message((struct usb_line6_pod *)line6);
   break;

  case 132:
   switch (line6->interface_number) {
   case 129:
    pod_process_message((struct usb_line6_pod *)line6);
    break;

   case 128:
    variax_process_message((struct usb_line6_variax *)line6);
    break;

   default:
    dev_err(line6->ifcdev, "PODxt Live interface %d not supported\n", line6->interface_number);
   }
   break;

  case 130:
   variax_process_message((struct usb_line6_variax *)line6);
   break;

  default:
   MISSING_CASE;
  }
 }

 line6_start_listen(line6);
}
