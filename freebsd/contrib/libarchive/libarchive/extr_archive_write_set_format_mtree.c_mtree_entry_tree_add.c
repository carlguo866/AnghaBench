
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ length; char* s; } ;
struct mtree_writer {TYPE_3__ cur_dirstr; struct mtree_entry* cur_dirent; struct mtree_entry* root; } ;
struct TYPE_12__ {char* s; } ;
struct mtree_entry {TYPE_1__* dir_info; struct mtree_entry* parent; TYPE_3__ basename; TYPE_3__ parentdir; TYPE_2__ pathname; } ;
struct archive_write {int archive; scalar_t__ format_data; } ;
struct archive_string {char* s; int length; } ;
struct archive_rb_node {int dummy; } ;
typedef int name ;
struct TYPE_11__ {scalar_t__ virtual; int rbtree; } ;


 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FAILED ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 int NAME_MAX ;
 int _MAX_FNAME ;
 scalar_t__ __archive_rb_tree_find_node (int *,char*) ;
 int __archive_rb_tree_insert_node (int *,struct archive_rb_node*) ;
 int archive_set_error (int *,int ,char*,...) ;
 int archive_strappend_char (TYPE_3__*,char) ;
 int archive_string_concat (TYPE_3__*,TYPE_3__*) ;
 int archive_string_copy (TYPE_3__*,TYPE_3__*) ;
 int archive_string_empty (TYPE_3__*) ;
 int archive_string_ensure (TYPE_3__*,scalar_t__) ;
 int archive_string_free (struct archive_string*) ;
 int archive_string_init (struct archive_string*) ;
 scalar_t__ archive_strlen (TYPE_3__*) ;
 int archive_strncat (struct archive_string*,char const*,int) ;
 int get_path_component (char*,int,char const*) ;
 int mtree_entry_create_virtual_dir (struct archive_write*,char*,struct mtree_entry**) ;
 int mtree_entry_exchange_same_entry (struct archive_write*,struct mtree_entry*,struct mtree_entry*) ;
 struct mtree_entry* mtree_entry_find_child (struct mtree_entry*,char*) ;
 int mtree_entry_free (struct mtree_entry*) ;
 int mtree_entry_register_add (struct mtree_writer*,struct mtree_entry*) ;
 scalar_t__ strcmp (char*,char const*) ;

__attribute__((used)) static int
mtree_entry_tree_add(struct archive_write *a, struct mtree_entry **filep)
{





 char name[256];

 struct mtree_writer *mtree = (struct mtree_writer *)a->format_data;
 struct mtree_entry *dent, *file, *np;
 const char *fn, *p;
 int l, r;

 file = *filep;
 if (file->parentdir.length == 0 && file->basename.length == 1 &&
     file->basename.s[0] == '.') {
  file->parent = file;
  if (mtree->root != ((void*)0)) {
   np = mtree->root;
   goto same_entry;
  }
  mtree->root = file;
  mtree_entry_register_add(mtree, file);
  return (ARCHIVE_OK);
 }

 if (file->parentdir.length == 0) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
      "Internal programming error "
      "in generating canonical name for %s",
      file->pathname.s);
  return (ARCHIVE_FAILED);
 }

 fn = p = file->parentdir.s;






 if (archive_strlen(&(mtree->cur_dirstr))
       == archive_strlen(&(file->parentdir)) &&
     strcmp(mtree->cur_dirstr.s, fn) == 0) {
  if (!__archive_rb_tree_insert_node(
      &(mtree->cur_dirent->dir_info->rbtree),
      (struct archive_rb_node *)file)) {

   np = (struct mtree_entry *)__archive_rb_tree_find_node(
       &(mtree->cur_dirent->dir_info->rbtree),
       file->basename.s);
   goto same_entry;
  }
  file->parent = mtree->cur_dirent;
  mtree_entry_register_add(mtree, file);
  return (ARCHIVE_OK);
 }

 dent = mtree->root;
 for (;;) {
  l = get_path_component(name, sizeof(name), fn);
  if (l == 0) {
   np = ((void*)0);
   break;
  }
  if (l < 0) {
   archive_set_error(&a->archive,
       ARCHIVE_ERRNO_MISC,
       "A name buffer is too small");
   return (ARCHIVE_FATAL);
  }
  if (l == 1 && name[0] == '.' && dent != ((void*)0) &&
      dent == mtree->root) {
   fn += l;
   if (fn[0] == '/')
    fn++;
   continue;
  }

  np = mtree_entry_find_child(dent, name);
  if (np == ((void*)0) || fn[0] == '\0')
   break;


  if (!np->dir_info) {

   archive_set_error(&a->archive,
       ARCHIVE_ERRNO_MISC,
       "`%s' is not directory, we cannot insert `%s' ",
       np->pathname.s, file->pathname.s);
   return (ARCHIVE_FAILED);
  }
  fn += l;
  if (fn[0] == '/')
   fn++;
  dent = np;
 }
 if (np == ((void*)0)) {



  while (fn[0] != '\0') {
   struct mtree_entry *vp;
   struct archive_string as;

   archive_string_init(&as);
   archive_strncat(&as, p, fn - p + l);
   if (as.s[as.length-1] == '/') {
    as.s[as.length-1] = '\0';
    as.length--;
   }
   r = mtree_entry_create_virtual_dir(a, as.s, &vp);
   archive_string_free(&as);
   if (r < ARCHIVE_WARN)
    return (r);

   if (strcmp(vp->pathname.s, ".") == 0) {
    vp->parent = vp;
    mtree->root = vp;
   } else {
    __archive_rb_tree_insert_node(
        &(dent->dir_info->rbtree),
        (struct archive_rb_node *)vp);
    vp->parent = dent;
   }
   mtree_entry_register_add(mtree, vp);
   np = vp;

   fn += l;
   if (fn[0] == '/')
    fn++;
   l = get_path_component(name, sizeof(name), fn);
   if (l < 0) {
    archive_string_free(&as);
    archive_set_error(&a->archive,
        ARCHIVE_ERRNO_MISC,
        "A name buffer is too small");
    return (ARCHIVE_FATAL);
   }
   dent = np;
  }



  mtree->cur_dirent = dent;
  archive_string_empty(&(mtree->cur_dirstr));
  archive_string_ensure(&(mtree->cur_dirstr),
      archive_strlen(&(dent->parentdir)) +
      archive_strlen(&(dent->basename)) + 2);
  if (archive_strlen(&(dent->parentdir)) +
      archive_strlen(&(dent->basename)) == 0)
   mtree->cur_dirstr.s[0] = 0;
  else {
   if (archive_strlen(&(dent->parentdir)) > 0) {
    archive_string_copy(&(mtree->cur_dirstr),
        &(dent->parentdir));
    archive_strappend_char(
        &(mtree->cur_dirstr), '/');
   }
   archive_string_concat(&(mtree->cur_dirstr),
       &(dent->basename));
  }

  if (!__archive_rb_tree_insert_node(
      &(dent->dir_info->rbtree),
      (struct archive_rb_node *)file)) {
   np = (struct mtree_entry *)__archive_rb_tree_find_node(
       &(dent->dir_info->rbtree), file->basename.s);
   goto same_entry;
  }
  file->parent = dent;
  mtree_entry_register_add(mtree, file);
  return (ARCHIVE_OK);
 }

same_entry:




 r = mtree_entry_exchange_same_entry(a, np, file);
 if (r < ARCHIVE_WARN)
  return (r);
 if (np->dir_info)
  np->dir_info->virtual = 0;
 *filep = np;
 mtree_entry_free(file);
 return (ARCHIVE_WARN);
}
