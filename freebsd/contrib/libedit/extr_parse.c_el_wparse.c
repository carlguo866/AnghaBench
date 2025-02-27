
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char wchar_t ;
struct TYPE_6__ {int (* func ) (TYPE_1__*,int,char const**) ;int * name; } ;
struct TYPE_5__ {int el_prog; } ;
typedef TYPE_1__ EditLine ;


 TYPE_4__* cmds ;
 char* el_calloc (size_t,int) ;
 int el_free (char*) ;
 scalar_t__ el_match (int ,char*) ;
 int stub1 (TYPE_1__*,int,char const**) ;
 char* wcschr (char const*,int) ;
 scalar_t__ wcscmp (int *,char const*) ;
 int wcsncpy (char*,char const*,size_t) ;

int
el_wparse(EditLine *el, int argc, const wchar_t *argv[])
{
 const wchar_t *ptr;
 int i;

 if (argc < 1)
  return -1;
 ptr = wcschr(argv[0], L':');
 if (ptr != ((void*)0)) {
  wchar_t *tprog;
  size_t l;

  if (ptr == argv[0])
   return 0;
  l = (size_t)(ptr - argv[0]);
  tprog = el_calloc(l + 1, sizeof(*tprog));
  if (tprog == ((void*)0))
   return 0;
  (void) wcsncpy(tprog, argv[0], l);
  tprog[l] = '\0';
  ptr++;
  l = (size_t)el_match(el->el_prog, tprog);
  el_free(tprog);
  if (!l)
   return 0;
 } else
  ptr = argv[0];

 for (i = 0; cmds[i].name != ((void*)0); i++)
  if (wcscmp(cmds[i].name, ptr) == 0) {
   i = (*cmds[i].func) (el, argc, argv);
   return -i;
  }
 return -1;
}
