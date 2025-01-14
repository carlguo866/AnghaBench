
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ Window ;
struct TYPE_6__ {void* probing_selections; int rdesktop_clipboard_target_atom; int targets_atom; int clipboard_atom; int primary_atom; int rdesktop_clipboard_timestamp_target_atom; int timestamp_atom; int rdesktop_primary_timestamp_target_atom; scalar_t__ clipboard_timestamp; scalar_t__ primary_timestamp; scalar_t__ auto_mode; void* reprobe_selections; } ;
struct TYPE_7__ {scalar_t__ wnd; TYPE_1__ xclip; int display; } ;
typedef TYPE_2__ RDPCLIENT ;


 int CurrentTime ;
 int DEBUG_CLIPBOARD (char*) ;
 void* False ;
 scalar_t__ None ;
 int RDP_CF_TEXT ;
 void* True ;
 int XConvertSelection (int ,int ,int ,int ,scalar_t__,int ) ;
 scalar_t__ XGetSelectionOwner (int ,int ) ;
 int cliprdr_send_simple_native_format_announce (TYPE_2__*,int ) ;
 int xclip_clear_target_props (TYPE_2__*) ;

__attribute__((used)) static void
xclip_probe_selections(RDPCLIENT * This)
{
 Window primary_owner, clipboard_owner;

 if (This->xclip.probing_selections)
 {
  DEBUG_CLIPBOARD(("Already probing selections. Scheduling reprobe.\n"));
  This->xclip.reprobe_selections = True;
  return;
 }

 DEBUG_CLIPBOARD(("Probing selections.\n"));

 This->xclip.probing_selections = True;
 This->xclip.reprobe_selections = False;

 xclip_clear_target_props(This);

 if (This->xclip.auto_mode)
  primary_owner = XGetSelectionOwner(This->display, This->xclip.primary_atom);
 else
  primary_owner = None;

 clipboard_owner = XGetSelectionOwner(This->display, This->xclip.clipboard_atom);


 if (((primary_owner == This->wnd) || !This->xclip.auto_mode) && (clipboard_owner == This->wnd))
  goto end;


 if ((primary_owner != None) && (clipboard_owner != None))
 {
  This->xclip.primary_timestamp = 0;
  This->xclip.clipboard_timestamp = 0;
  XConvertSelection(This->display, This->xclip.primary_atom, This->xclip.timestamp_atom,
      This->xclip.rdesktop_primary_timestamp_target_atom, This->wnd, CurrentTime);
  XConvertSelection(This->display, This->xclip.clipboard_atom, This->xclip.timestamp_atom,
      This->xclip.rdesktop_clipboard_timestamp_target_atom, This->wnd, CurrentTime);
  return;
 }


 if (primary_owner != None)
 {
  XConvertSelection(This->display, This->xclip.primary_atom, This->xclip.targets_atom,
      This->xclip.rdesktop_clipboard_target_atom, This->wnd, CurrentTime);
  return;
 }


 if (clipboard_owner != None)
 {
  XConvertSelection(This->display, This->xclip.clipboard_atom, This->xclip.targets_atom,
      This->xclip.rdesktop_clipboard_target_atom, This->wnd, CurrentTime);
  return;
 }

 DEBUG_CLIPBOARD(("No owner of any selection.\n"));





 cliprdr_send_simple_native_format_announce(This, RDP_CF_TEXT);

      end:
 This->xclip.probing_selections = False;
}
