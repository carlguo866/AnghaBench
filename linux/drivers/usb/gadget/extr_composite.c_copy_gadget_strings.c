
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_string {char* s; } ;
struct usb_gadget_strings {struct usb_string* strings; int language; } ;
struct usb_gadget_string_container {void* stash; } ;


 int ENOMEM ;
 struct usb_gadget_string_container* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 struct usb_gadget_strings** get_containers_gs (struct usb_gadget_string_container*) ;
 struct usb_gadget_string_container* kmalloc (unsigned int,int ) ;

__attribute__((used)) static struct usb_gadget_string_container *copy_gadget_strings(
  struct usb_gadget_strings **sp, unsigned n_gstrings,
  unsigned n_strings)
{
 struct usb_gadget_string_container *uc;
 struct usb_gadget_strings **gs_array;
 struct usb_gadget_strings *gs;
 struct usb_string *s;
 unsigned mem;
 unsigned n_gs;
 unsigned n_s;
 void *stash;

 mem = sizeof(*uc);
 mem += sizeof(void *) * (n_gstrings + 1);
 mem += sizeof(struct usb_gadget_strings) * n_gstrings;
 mem += sizeof(struct usb_string) * (n_strings + 1) * (n_gstrings);
 uc = kmalloc(mem, GFP_KERNEL);
 if (!uc)
  return ERR_PTR(-ENOMEM);
 gs_array = get_containers_gs(uc);
 stash = uc->stash;
 stash += sizeof(void *) * (n_gstrings + 1);
 for (n_gs = 0; n_gs < n_gstrings; n_gs++) {
  struct usb_string *org_s;

  gs_array[n_gs] = stash;
  gs = gs_array[n_gs];
  stash += sizeof(struct usb_gadget_strings);
  gs->language = sp[n_gs]->language;
  gs->strings = stash;
  org_s = sp[n_gs]->strings;

  for (n_s = 0; n_s < n_strings; n_s++) {
   s = stash;
   stash += sizeof(struct usb_string);
   if (org_s->s)
    s->s = org_s->s;
   else
    s->s = "";
   org_s++;
  }
  s = stash;
  s->s = ((void*)0);
  stash += sizeof(struct usb_string);

 }
 gs_array[n_gs] = ((void*)0);
 return uc;
}
