
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int builder; int app; int * settings; int queue; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int hb_title_t ;
typedef scalar_t__ gint ;
typedef int gboolean ;
typedef int GtkWidget ;
typedef int GtkListBoxRow ;
typedef int GtkListBox ;
typedef int GhbValue ;
typedef int GSimpleAction ;


 scalar_t__ GHB_QUEUE_PENDING ;
 scalar_t__ GHB_STATE_MUXING ;
 scalar_t__ GHB_STATE_PAUSED ;
 scalar_t__ GHB_STATE_SCANNING ;
 scalar_t__ GHB_STATE_SEARCHING ;
 scalar_t__ GHB_STATE_WORKING ;
 int * GHB_WIDGET (int ,char*) ;
 int * GTK_LIST_BOX (int *) ;
 int GTK_MENU_ITEM (int *) ;
 int GTK_TOOL_BUTTON (int *) ;
 int GTK_TOOL_ITEM (int *) ;
 int G_ACTION_MAP (int ) ;
 int * G_SIMPLE_ACTION (int ) ;
 int _ (char*) ;
 int g_action_map_lookup_action (int ,char*) ;
 int g_simple_action_set_enabled (int *,int) ;
 int * ghb_array_get (int ,scalar_t__) ;
 scalar_t__ ghb_array_len (int ) ;
 int * ghb_dict_get (int *,char*) ;
 scalar_t__ ghb_dict_get_int (int *,char*) ;
 scalar_t__ ghb_get_queue_state () ;
 scalar_t__ ghb_get_scan_state () ;
 int * ghb_lookup_title (scalar_t__,scalar_t__*) ;
 int * gtk_list_box_get_selected_row (int *) ;
 scalar_t__ gtk_list_box_row_get_index (int *) ;
 int gtk_menu_item_set_label (int ,int ) ;
 int gtk_tool_button_set_icon_name (int ,char*) ;
 int gtk_tool_button_set_label (int ,int ) ;
 int gtk_tool_item_set_tooltip_text (int ,int ) ;
 int gtk_widget_set_tooltip_text (int *,int ) ;

void
ghb_queue_buttons_grey(signal_user_data_t *ud)
{
    GtkWidget * widget;
    GSimpleAction * action;
    gint queue_count;
    gint title_id, titleindex;
    const hb_title_t * title;
    gint queue_state, scan_state;
    gboolean allow_start, show_stop, allow_add, paused;
    GtkListBox * lb;
    GtkListBoxRow * row;
    gint index, status = GHB_QUEUE_PENDING;

    lb = GTK_LIST_BOX(GHB_WIDGET(ud->builder, "queue_list"));
    row = gtk_list_box_get_selected_row(lb);

    if (row != ((void*)0))
    {
        index = gtk_list_box_row_get_index(row);
        if (index >= 0 && index < ghb_array_len(ud->queue))
        {
            GhbValue * queueDict, *uiDict;

            queueDict = ghb_array_get(ud->queue, index);
            uiDict = ghb_dict_get(queueDict, "uiSettings");
            status = ghb_dict_get_int(uiDict, "job_status");
        }
    }

    queue_count = ghb_array_len(ud->queue);
    title_id = ghb_dict_get_int(ud->settings, "title");
    title = ghb_lookup_title(title_id, &titleindex);

    queue_state = ghb_get_queue_state();
    scan_state = ghb_get_scan_state();

    show_stop = queue_state &
                  (GHB_STATE_WORKING | GHB_STATE_SEARCHING |
                   GHB_STATE_SCANNING | GHB_STATE_MUXING | GHB_STATE_PAUSED);
    allow_start = !(scan_state & GHB_STATE_SCANNING) &&
                    (title != ((void*)0) || queue_count > 0);
    allow_add = !(scan_state & GHB_STATE_SCANNING) && title != ((void*)0);


    paused = queue_state & GHB_STATE_PAUSED;

    action = G_SIMPLE_ACTION(g_action_map_lookup_action(G_ACTION_MAP(ud->app),
                                                        "queue-export"));
    g_simple_action_set_enabled(action, !!queue_count);
    action = G_SIMPLE_ACTION(g_action_map_lookup_action(G_ACTION_MAP(ud->app),
                                                        "queue-add"));
    g_simple_action_set_enabled(action, allow_add);
    action = G_SIMPLE_ACTION(g_action_map_lookup_action(G_ACTION_MAP(ud->app),
                                                        "queue-add-all"));
    g_simple_action_set_enabled(action, allow_add);
    action = G_SIMPLE_ACTION(g_action_map_lookup_action(G_ACTION_MAP(ud->app),
                                                        "queue-start"));
    g_simple_action_set_enabled(action, allow_start || show_stop);
    action = G_SIMPLE_ACTION(g_action_map_lookup_action(G_ACTION_MAP(ud->app),
                                                        "queue-pause"));
    g_simple_action_set_enabled(action, show_stop);

    action = G_SIMPLE_ACTION(g_action_map_lookup_action(G_ACTION_MAP(ud->app),
                                                        "queue-reset"));
    g_simple_action_set_enabled(action, row != ((void*)0));

    action = G_SIMPLE_ACTION(g_action_map_lookup_action(G_ACTION_MAP(ud->app),
                                                        "queue-edit"));
    g_simple_action_set_enabled(action, row != ((void*)0));

    action = G_SIMPLE_ACTION(g_action_map_lookup_action(G_ACTION_MAP(ud->app),
                                                        "queue-open-source"));
    g_simple_action_set_enabled(action, row != ((void*)0));

    action = G_SIMPLE_ACTION(g_action_map_lookup_action(G_ACTION_MAP(ud->app),
                                                        "queue-open-dest"));
    g_simple_action_set_enabled(action, row != ((void*)0));

    action = G_SIMPLE_ACTION(g_action_map_lookup_action(G_ACTION_MAP(ud->app),
                                                        "queue-open-log-dir"));
    g_simple_action_set_enabled(action, status != GHB_QUEUE_PENDING);

    action = G_SIMPLE_ACTION(g_action_map_lookup_action(G_ACTION_MAP(ud->app),
                                                        "queue-open-log"));
    g_simple_action_set_enabled(action, status != GHB_QUEUE_PENDING);

    widget = GHB_WIDGET (ud->builder, "queue_start");
    if (show_stop)
    {
        gtk_tool_button_set_icon_name(GTK_TOOL_BUTTON(widget), "hb-stop");
        gtk_tool_button_set_label(GTK_TOOL_BUTTON(widget), _("Stop"));
        gtk_tool_item_set_tooltip_text(GTK_TOOL_ITEM(widget), _("Stop Encoding"));
    }
    else
    {
        gtk_tool_button_set_icon_name(GTK_TOOL_BUTTON(widget), "hb-start");
        gtk_tool_button_set_label(GTK_TOOL_BUTTON(widget), _("Start"));
        gtk_tool_item_set_tooltip_text(GTK_TOOL_ITEM(widget), _("Start Encoding"));
    }
    widget = GHB_WIDGET (ud->builder, "queue_list_start");
    if (show_stop)
    {
        gtk_tool_button_set_icon_name(GTK_TOOL_BUTTON(widget), "hb-stop");
        gtk_tool_button_set_label(GTK_TOOL_BUTTON(widget), _("Stop"));
        gtk_tool_item_set_tooltip_text(GTK_TOOL_ITEM(widget), _("Stop Encoding"));
    }
    else
    {
        gtk_tool_button_set_icon_name(GTK_TOOL_BUTTON(widget), "hb-start");
        gtk_tool_button_set_label(GTK_TOOL_BUTTON(widget), _("Start"));
        gtk_tool_item_set_tooltip_text(GTK_TOOL_ITEM(widget), _("Start Encoding"));
    }
    widget = GHB_WIDGET (ud->builder, "queue_start_menu");
    if (show_stop)
    {
        gtk_menu_item_set_label(GTK_MENU_ITEM(widget), _("S_top Encoding"));
        gtk_widget_set_tooltip_text(widget, _("Stop Encoding"));
    }
    else
    {
        gtk_menu_item_set_label(GTK_MENU_ITEM(widget), _("_Start Encoding"));
        gtk_widget_set_tooltip_text(widget, _("Start Encoding"));
    }

    widget = GHB_WIDGET (ud->builder, "queue_pause");
    if (paused)
    {
        gtk_tool_button_set_icon_name(GTK_TOOL_BUTTON(widget), "hb-start");
        gtk_tool_button_set_label(GTK_TOOL_BUTTON(widget), _("Resume"));
        gtk_tool_item_set_tooltip_text(GTK_TOOL_ITEM(widget), _("Resume Encoding"));
    }
    else
    {
        gtk_tool_button_set_icon_name(GTK_TOOL_BUTTON(widget), "hb-pause");
        gtk_tool_button_set_label(GTK_TOOL_BUTTON(widget), _("Pause"));
        gtk_tool_item_set_tooltip_text(GTK_TOOL_ITEM(widget), _("Pause Encoding"));
    }
    widget = GHB_WIDGET (ud->builder, "queue_list_pause");
    if (paused)
    {
        gtk_tool_button_set_icon_name(GTK_TOOL_BUTTON(widget), "hb-start");
        gtk_tool_button_set_label(GTK_TOOL_BUTTON(widget), _("Resume"));
        gtk_tool_item_set_tooltip_text(GTK_TOOL_ITEM(widget), _("Resume Encoding"));
    }
    else
    {
        gtk_tool_button_set_icon_name(GTK_TOOL_BUTTON(widget), "hb-pause");
        gtk_tool_button_set_label(GTK_TOOL_BUTTON(widget), _("Pause"));
        gtk_tool_item_set_tooltip_text(GTK_TOOL_ITEM(widget), _("Pause Encoding"));
    }
    widget = GHB_WIDGET (ud->builder, "queue_pause_menu");
    if (paused)
    {
        gtk_menu_item_set_label(GTK_MENU_ITEM(widget), _("_Resume Encoding"));
        gtk_widget_set_tooltip_text(widget, _("Resume Encoding"));
    }
    else
    {
        gtk_menu_item_set_label(GTK_MENU_ITEM(widget), _("_Pause Encoding"));
        gtk_widget_set_tooltip_text(widget, _("Pause Encoding"));
    }
}
