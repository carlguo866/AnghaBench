
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * prefs; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef char const gchar ;
typedef int gboolean ;
typedef int GhbValue ;


 int IMPORTSRT ;
 int TRUE ;
 int g_free (char const*) ;
 char* g_strdup_printf (char*,char const*) ;
 int ghb_dict_get_int (int *,char*) ;
 char* ghb_dict_get_string (int *,char*) ;
 int * ghb_dict_new () ;
 int ghb_dict_set_bool (int *,char*,int) ;
 int ghb_dict_set_int (int *,char*,int) ;
 int ghb_dict_set_string (int *,char*,char const*) ;
 int * ghb_get_title_subtitle_track (int *,int) ;
 int hb_dict_set (int *,char*,int *) ;
 int hb_subtitle_can_pass (int,int) ;
 int subtitle_add_to_settings (int *,int *) ;

__attribute__((used)) static GhbValue* subtitle_add_track(
    signal_user_data_t *ud,
    GhbValue *settings,
    int track,
    int mux,
    gboolean default_track,
    gboolean import,
    int source,
    gboolean burn,
    gboolean *burned)
{
    const char * name = ((void*)0);
    if (track >= 0 && !import)
    {
        GhbValue * strack;

        strack = ghb_get_title_subtitle_track(settings, track);
        source = ghb_dict_get_int(strack, "Source");
        name = ghb_dict_get_string(strack, "Name");
    }

    burn |= !hb_subtitle_can_pass(source, mux);

    if (*burned && burn)
    {

        return ((void*)0);
    }

    GhbValue *subsettings = ghb_dict_new();
    if (import)
    {

        GhbValue *import_dict;
        const gchar *pref_lang, *dir;
        gchar *filename;

        import_dict = ghb_dict_new();
        hb_dict_set(subsettings, "Import", import_dict);

        ghb_dict_set_string(import_dict, "Format",
                            source == IMPORTSRT ? "SRT" : "SSA");
        pref_lang = ghb_dict_get_string(settings, "PreferredLanguage");
        ghb_dict_set_string(import_dict, "Language", pref_lang);
        ghb_dict_set_string(import_dict, "Codeset", "UTF-8");

        dir = ghb_dict_get_string(ud->prefs, "SrtDir");
        filename = g_strdup_printf("%s/none", dir);
        ghb_dict_set_string(import_dict, "Filename", filename);
        g_free(filename);
    }

    if (name != ((void*)0) && name[0] != 0)
    {
        ghb_dict_set_string(subsettings, "Name", name);
    }
    ghb_dict_set_int(subsettings, "Track", track);
    ghb_dict_set_int(subsettings, "Offset", 0);
    ghb_dict_set_bool(subsettings, "Forced", track == -1);
    ghb_dict_set_bool(subsettings, "Default", default_track);
    ghb_dict_set_bool(subsettings, "Burn", burn);
    if (burn && track != -1)
    {




        *burned = TRUE;
    }

    subtitle_add_to_settings(settings, subsettings);

    return subsettings;
}
