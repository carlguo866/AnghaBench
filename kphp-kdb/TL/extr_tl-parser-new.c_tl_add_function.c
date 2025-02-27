
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_type {int dummy; } ;
struct tl_constructor {char* id; unsigned int name; char* print_id; scalar_t__ right; scalar_t__ left; scalar_t__ real_id; struct tl_type* type; } ;


 int TL_ERROR (char*,char*) ;
 int assert (int) ;
 int lrand48 () ;
 int memcpy (char*,char const*,int) ;
 int tl_function_tree ;
 int total_functions_num ;
 int tree_insert_tl_constructor (int ,struct tl_constructor*,int ) ;
 scalar_t__ tree_lookup_tl_constructor (int ,struct tl_constructor*) ;
 int vkprintf (int,char*,char*) ;
 int zfree (char*,int) ;
 void* zmalloc (int) ;
 char* zstrdup (char*) ;

struct tl_constructor *tl_add_function (struct tl_type *a, const char *_id, int len, int force_magic) {

  int x = 0;
  while (x < len && ((_id[x] != '#') || force_magic)) { x++; }
  char *id = zmalloc (x + 1);
  memcpy (id, _id, x);
  id[x] = 0;
  vkprintf (2, "Add function %s\n", id);

  unsigned magic = 0;
  if (x < len) {
    assert (len - x == 9);
    int i;
    for (i = 1; i <= 8; i++) {
      magic = (magic << 4) + (_id[x + i] <= '9' ? _id[x + i] - '0' : _id[x + i] - 'a' + 10);
    }
    assert (magic && magic != -1);
  }

  struct tl_constructor _t = {.id = id};
  if (tree_lookup_tl_constructor (tl_function_tree, &_t)) {
    TL_ERROR ("Duplicate function id `%s`\n", id);
    zfree (id, len + 1);
    return 0;
  }

  struct tl_constructor *t = zmalloc (sizeof (*t));
  t->type = a;
  t->name = magic;
  t->id = id;
  t->print_id = zstrdup (id);
  t->real_id = 0;

  int i;
  for (i = 0; i < len; i++) if (t->print_id[i] == '.' || t->print_id[i] == '#' || t->print_id[i] == ' ') {
    t->print_id[i] = '$';
  }

  t->left = t->right = 0;
  tl_function_tree = tree_insert_tl_constructor (tl_function_tree, t, lrand48 ());
  total_functions_num ++;
  return t;
}
