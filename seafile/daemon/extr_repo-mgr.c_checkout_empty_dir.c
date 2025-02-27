
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_entry {int ce_flags; } ;
typedef int gint64 ;
typedef scalar_t__ gboolean ;
typedef int SeafStat ;
typedef int GHashTable ;


 int CE_REMOVE ;
 scalar_t__ FALSE ;
 int FETCH_CHECKOUT_FAILED ;
 int FETCH_CHECKOUT_SUCCESS ;
 char* build_checkout_path (char const*,char const*,int ) ;
 int fill_stat_cache_info (struct cache_entry*,int *) ;
 int g_free (char*) ;
 scalar_t__ seaf_set_file_time (char*,int ) ;
 int seaf_stat (char*,int *) ;
 int seaf_util_exists (char*) ;
 scalar_t__ seaf_util_mkdir (char*,int) ;
 int seaf_warning (char*,char*) ;
 int strlen (char const*) ;

int
checkout_empty_dir (const char *worktree,
                    const char *name,
                    gint64 mtime,
                    struct cache_entry *ce,
                    GHashTable *conflict_hash,
                    GHashTable *no_conflict_hash)
{
    char *path;
    gboolean case_conflict = FALSE;

    path = build_checkout_path (worktree, name, strlen(name));

    if (!path)
        return FETCH_CHECKOUT_FAILED;

    if (!seaf_util_exists (path) && seaf_util_mkdir (path, 0777) < 0) {
        seaf_warning ("Failed to create empty dir %s in checkout.\n", path);
        g_free (path);
        return FETCH_CHECKOUT_FAILED;
    }

    if (mtime != 0 && seaf_set_file_time (path, mtime) < 0) {
        seaf_warning ("Failed to set mtime for %s.\n", path);
    }

    if (case_conflict) {
        ce->ce_flags |= CE_REMOVE;
        g_free (path);
        return FETCH_CHECKOUT_SUCCESS;
    }

    SeafStat st;
    seaf_stat (path, &st);
    fill_stat_cache_info (ce, &st);

    g_free (path);
    return FETCH_CHECKOUT_SUCCESS;
}
