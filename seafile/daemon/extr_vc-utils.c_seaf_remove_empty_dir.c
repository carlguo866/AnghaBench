
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int message; } ;
struct TYPE_5__ {int st_mode; } ;
typedef TYPE_1__ SeafStat ;
typedef TYPE_2__ GError ;
typedef int GDir ;


 int S_ISDIR (int ) ;
 int errno ;
 char* g_build_path (char*,char const*,char const*,int *) ;
 int g_dir_close (int *) ;
 int * g_dir_open (char const*,int ,TYPE_2__**) ;
 char* g_dir_read_name (int *) ;
 int g_free (char*) ;
 scalar_t__ seaf_repo_manager_is_ignored_hidden_file (char const*) ;
 scalar_t__ seaf_stat (char const*,TYPE_1__*) ;
 scalar_t__ seaf_util_rmdir (char const*) ;
 scalar_t__ seaf_util_unlink (char*) ;
 int seaf_warning (char*,char const*,int ) ;
 int strerror (int ) ;

int
seaf_remove_empty_dir (const char *path)
{
    SeafStat st;
    GDir *dir;
    const char *dname;
    char *full_path;
    GError *error = ((void*)0);

    if (seaf_stat (path, &st) < 0 || !S_ISDIR(st.st_mode))
        return 0;

    if (seaf_util_rmdir (path) < 0) {
        dir = g_dir_open (path, 0, &error);
        if (!dir) {
            seaf_warning ("Failed to open dir %s: %s.\n", path, error->message);
            return -1;
        }


        while ((dname = g_dir_read_name (dir)) != ((void*)0)) {
            if (seaf_repo_manager_is_ignored_hidden_file(dname)) {
                full_path = g_build_path ("/", path, dname, ((void*)0));
                if (seaf_util_unlink (full_path) < 0)
                    seaf_warning ("Failed to remove file %s: %s.\n",
                                  full_path, strerror(errno));
                g_free (full_path);
            }
        }

        g_dir_close (dir);

        if (seaf_util_rmdir (path) < 0) {
            seaf_warning ("Failed to remove dir %s: %s.\n", path, strerror(errno));
            return -1;
        }
    }

    return 0;
}
