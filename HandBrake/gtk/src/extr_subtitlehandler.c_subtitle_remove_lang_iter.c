
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int settings; int builder; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int iso639_lang_t ;
typedef int GtkTreeView ;
typedef int GtkTreeStore ;
typedef int GtkTreeSelection ;
typedef int GtkTreePath ;
typedef int GtkTreeModel ;
typedef int GtkTreeIter ;
typedef int GhbValue ;


 int FALSE ;
 int GHB_WIDGET (int ,char*) ;
 int * GTK_TREE_MODEL (int *) ;
 int * GTK_TREE_STORE (int *) ;
 int * GTK_TREE_VIEW (int ) ;
 int g_free (char*) ;
 int * ghb_array_get (int *,int ) ;
 scalar_t__ ghb_array_len (int *) ;
 int ghb_array_remove (int *,int) ;
 int ghb_clear_presets_selection (TYPE_1__*) ;
 int * ghb_dict_get_value (int ,char*) ;
 scalar_t__ ghb_find_lang_row (int *,int *,int) ;
 int * ghb_iso639_lookup_by_int (int ) ;
 int ghb_lookup_lang (int *) ;
 int gtk_tree_model_get (int *,int *,int ,char**,int,int*,int) ;
 int * gtk_tree_model_get_path (int *,int *) ;
 int gtk_tree_path_free (int *) ;
 int* gtk_tree_path_get_indices (int *) ;
 int gtk_tree_selection_select_iter (int *,int *) ;
 int gtk_tree_store_append (int *,int *,int *) ;
 int gtk_tree_store_insert_before (int *,int *,int *,int *) ;
 int gtk_tree_store_remove (int *,int *) ;
 int gtk_tree_store_set (int *,int *,int ,char*,int,int,int) ;
 int * gtk_tree_view_get_model (int *) ;
 int * gtk_tree_view_get_selection (int *) ;
 int gtk_tree_view_scroll_to_cell (int *,int *,int *,int ,int ,int ) ;
 int subtitle_update_pref_lang (TYPE_1__*,int const*) ;

void
subtitle_remove_lang_iter(GtkTreeModel *tm, GtkTreeIter *iter,
                          signal_user_data_t *ud)
{
    GtkTreeView * avail;
    GtkTreeStore * avail_ts;
    GtkTreeIter pos, sibling;
    char * lang;
    int index;
    GtkTreePath * tp = gtk_tree_model_get_path(tm, iter);
    int * ind = gtk_tree_path_get_indices(tp);
    int row = ind[0];
    GhbValue * slang_list;
    GtkTreeSelection * tsel;

    gtk_tree_path_free(tp);
    avail = GTK_TREE_VIEW(GHB_WIDGET(ud->builder, "subtitle_avail_lang"));
    avail_ts = GTK_TREE_STORE(gtk_tree_view_get_model(avail));
    tsel = gtk_tree_view_get_selection(avail);


    gtk_tree_model_get(tm, iter, 0, &lang, 1, &index, -1);
    if (ghb_find_lang_row(GTK_TREE_MODEL(avail_ts), &sibling, index))
    {
        gtk_tree_store_insert_before(avail_ts, &pos, ((void*)0), &sibling);
    }
    else
    {
        gtk_tree_store_append(avail_ts, &pos, ((void*)0));
    }
    gtk_tree_store_set(avail_ts, &pos, 0, lang, 1, index, -1);
    g_free(lang);



    tp = gtk_tree_model_get_path(GTK_TREE_MODEL(avail_ts), &pos);
    gtk_tree_selection_select_iter(tsel, &pos);
    gtk_tree_view_scroll_to_cell(avail, tp, ((void*)0), FALSE, 0, 0);
    gtk_tree_path_free(tp);


    gtk_tree_store_remove(GTK_TREE_STORE(tm), iter);


    slang_list = ghb_dict_get_value(ud->settings, "SubtitleLanguageList");
    ghb_array_remove(slang_list, row);
    ghb_clear_presets_selection(ud);

    if (row == 0)
    {
        if (ghb_array_len(slang_list) > 0)
        {
            const iso639_lang_t *lang;
            GhbValue *entry = ghb_array_get(slang_list, 0);
            lang = ghb_iso639_lookup_by_int(ghb_lookup_lang(entry));
            subtitle_update_pref_lang(ud, lang);
        }
        else
        {
            subtitle_update_pref_lang(ud, ((void*)0));
        }
    }
}
