
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct usb_string {int id; } ;
struct usb_midi_out_jack_descriptor_1 {int bLength; int bNrInputPins; TYPE_1__* pins; scalar_t__ iJack; int bJackID; void* bJackType; void* bDescriptorSubtype; void* bDescriptorType; } ;
struct usb_midi_in_jack_descriptor {int bLength; int bJackID; scalar_t__ iJack; void* bJackType; void* bDescriptorSubtype; void* bDescriptorType; } ;
struct usb_function {int name; void* ss_descriptors; void* hs_descriptors; void* fs_descriptors; } ;
struct usb_descriptor_header {int dummy; } ;
struct usb_configuration {struct usb_composite_dev* cdev; } ;
struct usb_composite_dev {int gadget; } ;
struct f_midi {int ms_id; int in_ports; int out_ports; void* out_ep; void* in_ep; int tasklet; int gadget; } ;
struct TYPE_18__ {int bInterfaceNumber; int iInterface; } ;
struct TYPE_17__ {void* wTotalLength; } ;
struct TYPE_16__ {int bNumEmbMIDIJack; void* bLength; int * baAssocJackID; } ;
struct TYPE_15__ {int bInterfaceNumber; } ;
struct TYPE_14__ {int bNumEmbMIDIJack; void* bLength; int * baAssocJackID; } ;
struct TYPE_13__ {void* wMaxPacketSize; } ;
struct TYPE_12__ {int baSourcePin; int baSourceID; } ;
struct TYPE_11__ {int* baInterfaceNr; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int ENOMEM ;
 int ERROR (struct usb_composite_dev*,char*,int ,int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct usb_string*) ;
 int MAX_PORTS ;
 int PTR_ERR (struct usb_string*) ;
 size_t STRING_FUNC_IDX ;
 void* USB_DT_CS_INTERFACE ;
 int USB_DT_MIDI_IN_SIZE ;
 int USB_DT_MIDI_OUT_SIZE (int) ;
 void* USB_DT_MS_ENDPOINT_SIZE (int) ;
 int USB_DT_MS_HEADER_SIZE ;
 void* USB_MS_EMBEDDED ;
 void* USB_MS_EXTERNAL ;
 void* USB_MS_MIDI_IN_JACK ;
 void* USB_MS_MIDI_OUT_JACK ;
 TYPE_10__ ac_header_desc ;
 TYPE_9__ ac_interface_desc ;
 TYPE_2__ bulk_in_desc ;
 int bulk_in_ss_comp_desc ;
 TYPE_2__ bulk_out_desc ;
 int bulk_out_ss_comp_desc ;
 void* cpu_to_le16 (int) ;
 int f_midi_in_tasklet ;
 int f_midi_register_card (struct f_midi*) ;
 int f_midi_unregister_card (struct f_midi*) ;
 struct f_midi* func_to_midi (struct usb_function*) ;
 scalar_t__ gadget_is_dualspeed (int ) ;
 scalar_t__ gadget_is_superspeed (int ) ;
 struct usb_descriptor_header** kcalloc (int,int,int ) ;
 int kfree (struct usb_descriptor_header**) ;
 int midi_string_defs ;
 int midi_strings ;
 TYPE_6__ ms_header_desc ;
 TYPE_5__ ms_in_desc ;
 TYPE_4__ ms_interface_desc ;
 TYPE_3__ ms_out_desc ;
 int tasklet_init (int *,int ,unsigned long) ;
 void* usb_copy_descriptors (struct usb_descriptor_header**) ;
 void* usb_ep_autoconfig (int ,TYPE_2__*) ;
 int usb_free_all_descriptors (struct usb_function*) ;
 struct usb_string* usb_gstrings_attach (struct usb_composite_dev*,int ,int ) ;
 int usb_interface_id (struct usb_configuration*,struct usb_function*) ;

__attribute__((used)) static int f_midi_bind(struct usb_configuration *c, struct usb_function *f)
{
 struct usb_descriptor_header **midi_function;
 struct usb_midi_in_jack_descriptor jack_in_ext_desc[MAX_PORTS];
 struct usb_midi_in_jack_descriptor jack_in_emb_desc[MAX_PORTS];
 struct usb_midi_out_jack_descriptor_1 jack_out_ext_desc[MAX_PORTS];
 struct usb_midi_out_jack_descriptor_1 jack_out_emb_desc[MAX_PORTS];
 struct usb_composite_dev *cdev = c->cdev;
 struct f_midi *midi = func_to_midi(f);
 struct usb_string *us;
 int status, n, jack = 1, i = 0, endpoint_descriptor_index = 0;

 midi->gadget = cdev->gadget;
 tasklet_init(&midi->tasklet, f_midi_in_tasklet, (unsigned long) midi);
 status = f_midi_register_card(midi);
 if (status < 0)
  goto fail_register;


 us = usb_gstrings_attach(c->cdev, midi_strings,
     ARRAY_SIZE(midi_string_defs));
 if (IS_ERR(us)) {
  status = PTR_ERR(us);
  goto fail;
 }
 ac_interface_desc.iInterface = us[STRING_FUNC_IDX].id;


 status = usb_interface_id(c, f);
 if (status < 0)
  goto fail;
 ac_interface_desc.bInterfaceNumber = status;

 status = usb_interface_id(c, f);
 if (status < 0)
  goto fail;
 ms_interface_desc.bInterfaceNumber = status;
 ac_header_desc.baInterfaceNr[0] = status;
 midi->ms_id = status;

 status = -ENODEV;


 midi->in_ep = usb_ep_autoconfig(cdev->gadget, &bulk_in_desc);
 if (!midi->in_ep)
  goto fail;

 midi->out_ep = usb_ep_autoconfig(cdev->gadget, &bulk_out_desc);
 if (!midi->out_ep)
  goto fail;


 midi_function = kcalloc((MAX_PORTS * 4) + 11, sizeof(*midi_function),
    GFP_KERNEL);
 if (!midi_function) {
  status = -ENOMEM;
  goto fail;
 }
 midi_function[i++] = (struct usb_descriptor_header *) &ac_interface_desc;
 midi_function[i++] = (struct usb_descriptor_header *) &ac_header_desc;
 midi_function[i++] = (struct usb_descriptor_header *) &ms_interface_desc;


 n = USB_DT_MS_HEADER_SIZE
  + (midi->in_ports + midi->out_ports) *
   (USB_DT_MIDI_IN_SIZE + USB_DT_MIDI_OUT_SIZE(1));
 ms_header_desc.wTotalLength = cpu_to_le16(n);

 midi_function[i++] = (struct usb_descriptor_header *) &ms_header_desc;


 for (n = 0; n < midi->in_ports; n++) {
  struct usb_midi_in_jack_descriptor *in_ext = &jack_in_ext_desc[n];
  struct usb_midi_out_jack_descriptor_1 *out_emb = &jack_out_emb_desc[n];

  in_ext->bLength = USB_DT_MIDI_IN_SIZE;
  in_ext->bDescriptorType = USB_DT_CS_INTERFACE;
  in_ext->bDescriptorSubtype = USB_MS_MIDI_IN_JACK;
  in_ext->bJackType = USB_MS_EXTERNAL;
  in_ext->bJackID = jack++;
  in_ext->iJack = 0;
  midi_function[i++] = (struct usb_descriptor_header *) in_ext;

  out_emb->bLength = USB_DT_MIDI_OUT_SIZE(1);
  out_emb->bDescriptorType = USB_DT_CS_INTERFACE;
  out_emb->bDescriptorSubtype = USB_MS_MIDI_OUT_JACK;
  out_emb->bJackType = USB_MS_EMBEDDED;
  out_emb->bJackID = jack++;
  out_emb->bNrInputPins = 1;
  out_emb->pins[0].baSourcePin = 1;
  out_emb->pins[0].baSourceID = in_ext->bJackID;
  out_emb->iJack = 0;
  midi_function[i++] = (struct usb_descriptor_header *) out_emb;


  ms_in_desc.baAssocJackID[n] = out_emb->bJackID;
 }


 for (n = 0; n < midi->out_ports; n++) {
  struct usb_midi_in_jack_descriptor *in_emb = &jack_in_emb_desc[n];
  struct usb_midi_out_jack_descriptor_1 *out_ext = &jack_out_ext_desc[n];

  in_emb->bLength = USB_DT_MIDI_IN_SIZE;
  in_emb->bDescriptorType = USB_DT_CS_INTERFACE;
  in_emb->bDescriptorSubtype = USB_MS_MIDI_IN_JACK;
  in_emb->bJackType = USB_MS_EMBEDDED;
  in_emb->bJackID = jack++;
  in_emb->iJack = 0;
  midi_function[i++] = (struct usb_descriptor_header *) in_emb;

  out_ext->bLength = USB_DT_MIDI_OUT_SIZE(1);
  out_ext->bDescriptorType = USB_DT_CS_INTERFACE;
  out_ext->bDescriptorSubtype = USB_MS_MIDI_OUT_JACK;
  out_ext->bJackType = USB_MS_EXTERNAL;
  out_ext->bJackID = jack++;
  out_ext->bNrInputPins = 1;
  out_ext->iJack = 0;
  out_ext->pins[0].baSourceID = in_emb->bJackID;
  out_ext->pins[0].baSourcePin = 1;
  midi_function[i++] = (struct usb_descriptor_header *) out_ext;


  ms_out_desc.baAssocJackID[n] = in_emb->bJackID;
 }


 ms_out_desc.bLength = USB_DT_MS_ENDPOINT_SIZE(midi->in_ports);
 ms_out_desc.bNumEmbMIDIJack = midi->in_ports;

 ms_in_desc.bLength = USB_DT_MS_ENDPOINT_SIZE(midi->out_ports);
 ms_in_desc.bNumEmbMIDIJack = midi->out_ports;


 endpoint_descriptor_index = i;
 midi_function[i++] = (struct usb_descriptor_header *) &bulk_out_desc;
 midi_function[i++] = (struct usb_descriptor_header *) &ms_out_desc;
 midi_function[i++] = (struct usb_descriptor_header *) &bulk_in_desc;
 midi_function[i++] = (struct usb_descriptor_header *) &ms_in_desc;
 midi_function[i++] = ((void*)0);







 f->fs_descriptors = usb_copy_descriptors(midi_function);
 if (!f->fs_descriptors)
  goto fail_f_midi;

 if (gadget_is_dualspeed(c->cdev->gadget)) {
  bulk_in_desc.wMaxPacketSize = cpu_to_le16(512);
  bulk_out_desc.wMaxPacketSize = cpu_to_le16(512);
  f->hs_descriptors = usb_copy_descriptors(midi_function);
  if (!f->hs_descriptors)
   goto fail_f_midi;
 }

 if (gadget_is_superspeed(c->cdev->gadget)) {
  bulk_in_desc.wMaxPacketSize = cpu_to_le16(1024);
  bulk_out_desc.wMaxPacketSize = cpu_to_le16(1024);
  i = endpoint_descriptor_index;
  midi_function[i++] = (struct usb_descriptor_header *)
         &bulk_out_desc;
  midi_function[i++] = (struct usb_descriptor_header *)
         &bulk_out_ss_comp_desc;
  midi_function[i++] = (struct usb_descriptor_header *)
         &ms_out_desc;
  midi_function[i++] = (struct usb_descriptor_header *)
         &bulk_in_desc;
  midi_function[i++] = (struct usb_descriptor_header *)
         &bulk_in_ss_comp_desc;
  midi_function[i++] = (struct usb_descriptor_header *)
         &ms_in_desc;
  f->ss_descriptors = usb_copy_descriptors(midi_function);
  if (!f->ss_descriptors)
   goto fail_f_midi;
 }

 kfree(midi_function);

 return 0;

fail_f_midi:
 kfree(midi_function);
 usb_free_all_descriptors(f);
fail:
 f_midi_unregister_card(midi);
fail_register:
 ERROR(cdev, "%s: can't bind, err %d\n", f->name, status);

 return status;
}
