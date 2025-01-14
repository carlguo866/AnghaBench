
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_1__ ;


struct TYPE_23__ {int mode; struct TYPE_23__* to_entry; struct TYPE_23__* to_label; struct TYPE_23__* transfer_button; struct TYPE_23__* from_entry; struct TYPE_23__* file_entry; } ;
typedef TYPE_1__ YuiTransfer ;
typedef TYPE_1__ GtkWidget ;
typedef int GSList ;


 int FALSE ;
 int GTK_BOX (TYPE_1__*) ;
 int GTK_CAN_DEFAULT ;
 int GTK_CONTAINER (TYPE_1__*) ;
 int GTK_LABEL (TYPE_1__*) ;
 int GTK_MISC (TYPE_1__*) ;
 int GTK_RADIO_BUTTON (TYPE_1__*) ;
 int GTK_WIDGET (TYPE_1__*) ;
 int GTK_WIDGET_SET_FLAGS (TYPE_1__*,int ) ;
 int GTK_WINDOW (TYPE_1__*) ;
 int G_CALLBACK (int ) ;
 int TRUE ;
 int YUI_TRANSFER_LOAD_EXEC ;
 char* _ (char*) ;
 int g_signal_connect (TYPE_1__*,char*,int ,TYPE_1__*) ;
 int g_signal_connect_swapped (TYPE_1__*,char*,int ,TYPE_1__*) ;
 int gtk_box_pack_start (int ,TYPE_1__*,int ,int ,int ) ;
 TYPE_1__* gtk_button_new_from_stock (char*) ;
 void* gtk_button_new_with_mnemonic (char*) ;
 int gtk_container_add (int ,TYPE_1__*) ;
 int gtk_container_set_border_width (int ,int) ;
 void* gtk_entry_new () ;
 TYPE_1__* gtk_hbox_new (int ,int) ;
 TYPE_1__* gtk_hbutton_box_new () ;
 void* gtk_label_new (char const*) ;
 int gtk_label_set_width_chars (int ,int ) ;
 int gtk_misc_set_alignment (int ,int ,double) ;
 int * gtk_radio_button_get_group (int ) ;
 TYPE_1__* gtk_radio_button_new_with_mnemonic (int *,char*) ;
 int gtk_radio_button_set_group (int ,int *) ;
 TYPE_1__* gtk_vbox_new (int ,int ) ;
 int gtk_widget_destroy ;
 int gtk_widget_set_sensitive (int ,int ) ;
 int gtk_widget_show_all (int ) ;
 int gtk_window_set_title (int ,char*) ;
 int strlen (char const*) ;
 int yui_transfer_browse ;
 int yui_transfer_check ;
 int yui_transfer_exec ;
 int yui_transfer_load ;
 int yui_transfer_load_exec ;
 int yui_transfer_store ;

__attribute__((used)) static void yui_transfer_init (YuiTransfer * yt) {
  GtkWidget *vbox1;
  GtkWidget *hbox1;
  GtkWidget *label4;
  GtkWidget *button1;
  GtkWidget *hbox2;
  GtkWidget *label2;
  GtkWidget *hbuttonbox1;
  GtkWidget *button5;
  GtkWidget *hbox3;
  GSList *radiobutton1_group = ((void*)0);
  GtkWidget *radiobutton1;
  GtkWidget *radiobutton2;
  GtkWidget *radiobutton3;
  const char * tmp;

  gtk_window_set_title (GTK_WINDOW (yt), _("File transfer"));

  vbox1 = gtk_vbox_new (FALSE, 0);
  gtk_container_add (GTK_CONTAINER (yt), vbox1);

  hbox1 = gtk_hbox_new (FALSE, 10);
  gtk_box_pack_start (GTK_BOX (vbox1), hbox1, FALSE, TRUE, 0);
  gtk_container_set_border_width (GTK_CONTAINER (hbox1), 10);

  tmp = _("File");
  label4 = gtk_label_new (tmp);
  gtk_box_pack_start (GTK_BOX (hbox1), label4, FALSE, FALSE, 0);
  gtk_misc_set_alignment (GTK_MISC (label4), 0, 0.5);
  gtk_label_set_width_chars (GTK_LABEL (label4), strlen(tmp));

  yt->file_entry = gtk_entry_new ();
  g_signal_connect_swapped(yt->file_entry, "changed", G_CALLBACK(yui_transfer_check), yt);
  gtk_box_pack_start (GTK_BOX (hbox1), yt->file_entry, TRUE, TRUE, 0);

  button1 = gtk_button_new_with_mnemonic (_("Browse"));
  g_signal_connect(button1, "clicked", G_CALLBACK(yui_transfer_browse), yt->file_entry);
  gtk_box_pack_start (GTK_BOX (hbox1), button1, FALSE, FALSE, 0);

  hbox3 = gtk_hbox_new (FALSE, 10);
  gtk_box_pack_start (GTK_BOX (vbox1), hbox3, FALSE, FALSE, 0);
  gtk_container_set_border_width (GTK_CONTAINER (hbox3), 10);

  radiobutton1 = gtk_radio_button_new_with_mnemonic (((void*)0), _("Load as executable"));
  g_signal_connect(radiobutton1, "toggled", G_CALLBACK(yui_transfer_load_exec), yt);
  gtk_box_pack_start (GTK_BOX (hbox3), radiobutton1, FALSE, FALSE, 0);
  gtk_radio_button_set_group (GTK_RADIO_BUTTON (radiobutton1), radiobutton1_group);
  radiobutton1_group = gtk_radio_button_get_group (GTK_RADIO_BUTTON (radiobutton1));

  radiobutton2 = gtk_radio_button_new_with_mnemonic (((void*)0), _("Load"));
  g_signal_connect(radiobutton2, "toggled", G_CALLBACK(yui_transfer_load), yt);
  gtk_box_pack_start (GTK_BOX (hbox3), radiobutton2, FALSE, FALSE, 0);
  gtk_radio_button_set_group (GTK_RADIO_BUTTON (radiobutton2), radiobutton1_group);
  radiobutton1_group = gtk_radio_button_get_group (GTK_RADIO_BUTTON (radiobutton2));

  radiobutton3 = gtk_radio_button_new_with_mnemonic (((void*)0), _("Store"));
  g_signal_connect(radiobutton3, "toggled", G_CALLBACK(yui_transfer_store), yt);
  gtk_box_pack_start (GTK_BOX (hbox3), radiobutton3, FALSE, FALSE, 0);
  gtk_radio_button_set_group (GTK_RADIO_BUTTON (radiobutton3), radiobutton1_group);
  radiobutton1_group = gtk_radio_button_get_group (GTK_RADIO_BUTTON (radiobutton3));

  hbox2 = gtk_hbox_new (FALSE, 10);
  gtk_box_pack_start (GTK_BOX (vbox1), hbox2, FALSE, TRUE, 0);
  gtk_container_set_border_width (GTK_CONTAINER (hbox2), 10);

  tmp = _("From");
  label2 = gtk_label_new (tmp);
  gtk_box_pack_start (GTK_BOX (hbox2), label2, FALSE, FALSE, 0);
  gtk_misc_set_alignment (GTK_MISC (label2), 0, 0.5);
  gtk_label_set_width_chars (GTK_LABEL (label2), strlen(tmp));

  yt->from_entry = gtk_entry_new ();
  g_signal_connect_swapped(yt->from_entry, "changed", G_CALLBACK(yui_transfer_check), yt);
  gtk_box_pack_start (GTK_BOX (hbox2), yt->from_entry, TRUE, TRUE, 0);

  tmp = _("To");
  yt->to_label = gtk_label_new (tmp);
  gtk_box_pack_start (GTK_BOX (hbox2), yt->to_label, FALSE, FALSE, 0);
  gtk_misc_set_alignment (GTK_MISC (yt->to_label), 0, 0.5);
  gtk_label_set_width_chars (GTK_LABEL (yt->to_label), strlen(tmp));

  yt->to_entry = gtk_entry_new ();
  g_signal_connect_swapped(yt->to_entry, "changed", G_CALLBACK(yui_transfer_check), yt);
  gtk_box_pack_start (GTK_BOX (hbox2), yt->to_entry, TRUE, TRUE, 0);

  hbuttonbox1 = gtk_hbutton_box_new ();
  gtk_box_pack_start (GTK_BOX (vbox1), hbuttonbox1, FALSE, TRUE, 0);
  gtk_container_set_border_width (GTK_CONTAINER (hbuttonbox1), 10);

  yt->transfer_button = gtk_button_new_with_mnemonic (_("Transfer"));
  gtk_container_add (GTK_CONTAINER (hbuttonbox1), yt->transfer_button);
  g_signal_connect(yt->transfer_button, "clicked", G_CALLBACK(yui_transfer_exec), yt);
  GTK_WIDGET_SET_FLAGS (yt->transfer_button, GTK_CAN_DEFAULT);

  button5 = gtk_button_new_from_stock ("gtk-cancel");
  gtk_container_add (GTK_CONTAINER (hbuttonbox1), button5);
  g_signal_connect_swapped(button5, "clicked", G_CALLBACK(gtk_widget_destroy), yt);
  GTK_WIDGET_SET_FLAGS (button5, GTK_CAN_DEFAULT);

  gtk_widget_show_all (GTK_WIDGET(yt));

 gtk_widget_set_sensitive(GTK_WIDGET(yt->to_label), FALSE);
 gtk_widget_set_sensitive(GTK_WIDGET(yt->to_entry), FALSE);

  yt->mode = YUI_TRANSFER_LOAD_EXEC;

}
