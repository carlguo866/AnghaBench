
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct lev_filesys_xfs_change_attrs {int filename_size; int filename; int gid; int uid; int modtime; int actime; int mode; } ;
struct TYPE_7__ {int st_gid; int st_uid; int st_mtime; int st_atime; int st_mode; } ;
struct TYPE_6__ {TYPE_2__ st; int filename; } ;
typedef TYPE_1__ file_t ;


 int LEV_FILESYS_XFS_CHANGE_ATTRS ;
 int PATH_MAX ;
 int append_path (char*,int,int ) ;
 int assert (int) ;
 struct lev_filesys_xfs_change_attrs* filesys_xfs_alloc_log_event (int ,int) ;
 int incr_file_mode_stat (TYPE_1__*) ;
 int lcopy_attrs (char*,TYPE_2__*) ;
 int memcpy (int ,char*,int const) ;
 char* new_dir ;
 int new_dir_length ;
 int pending_operation_create (int ,int *,char*,TYPE_2__*) ;
 int pending_operation_push (int ) ;
 int pot_copy_attrs ;
 int print_attrs (int) ;
 int printf (char*,char*) ;
 int snprintf (char*,int,char*,char*,char*) ;
 scalar_t__ status ;
 int strlen (char*) ;
 char* tmp_dir ;
 scalar_t__ use_clone ;
 int vkprintf (int,char*,int) ;

__attribute__((used)) static int change_attrs (int new_l, file_t *x, int attrib_mask) {
  append_path (new_dir, new_l, x->filename);
  if (status) {
    printf ("New attrs: %s ", new_dir + new_dir_length + 1);
    print_attrs (attrib_mask);
  } else {
    char *name = new_dir + new_dir_length + 1;
    const int name_length = strlen (name);
    if (use_clone) {
      char a[PATH_MAX];
      assert (snprintf (a, PATH_MAX, "%s/%s", tmp_dir, name) < PATH_MAX);
      int r = lcopy_attrs (a, &x->st);
      if (r < 0) {
        vkprintf (1, "lcopy_attrs returns error code %d.\n", r);
        return -2;
      }
    } else {
      pending_operation_push (pending_operation_create (pot_copy_attrs, ((void*)0), name, &x->st));
    }

    if (attrib_mask >= 0) {
      incr_file_mode_stat (x);
    }
    struct lev_filesys_xfs_change_attrs *E = filesys_xfs_alloc_log_event (LEV_FILESYS_XFS_CHANGE_ATTRS, sizeof (struct lev_filesys_xfs_change_attrs) + name_length);
    E->mode = x->st.st_mode;
    E->actime = x->st.st_atime;
    E->modtime = x->st.st_mtime;
    E->uid = x->st.st_uid;
    E->gid = x->st.st_gid;
    E->filename_size = name_length;
    memcpy (E->filename, name, name_length);
  }
  new_dir[new_l] = 0;
  return 0;
}
