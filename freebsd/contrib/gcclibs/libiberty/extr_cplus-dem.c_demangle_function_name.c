
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct work_stuff {int constructor; int destructor; } ;
struct TYPE_14__ {char* p; char* b; } ;
typedef TYPE_1__ string ;
struct TYPE_15__ {char* in; char* out; } ;


 scalar_t__ ARM_DEMANGLING ;
 size_t ARRAY_SIZE (TYPE_9__*) ;
 scalar_t__ EDG_DEMANGLING ;
 scalar_t__ HP_DEMANGLING ;
 scalar_t__ ISLOWER (unsigned char) ;
 scalar_t__ LUCID_DEMANGLING ;
 int cplus_markers ;
 int demangle_arm_hp_template (struct work_stuff*,char const**,int ,TYPE_1__*) ;
 scalar_t__ do_type (struct work_stuff*,char const**,TYPE_1__*) ;
 scalar_t__ memcmp (char*,char*,int) ;
 TYPE_9__* optable ;
 int * strchr (int ,char) ;
 scalar_t__ strcmp (char*,char*) ;
 int string_append (TYPE_1__*,char*) ;
 int string_appendn (TYPE_1__*,char const*,int) ;
 int string_appends (TYPE_1__*,TYPE_1__*) ;
 int string_clear (TYPE_1__*) ;
 int string_delete (TYPE_1__*) ;
 int string_need (TYPE_1__*,int) ;
 int strlen (char*) ;

__attribute__((used)) static void
demangle_function_name (struct work_stuff *work, const char **mangled,
                        string *declp, const char *scan)
{
  size_t i;
  string type;
  const char *tem;

  string_appendn (declp, (*mangled), scan - (*mangled));
  string_need (declp, 1);
  *(declp -> p) = '\0';





  (*mangled) = scan + 2;





  if (HP_DEMANGLING && (**mangled == 'X'))
    {
      demangle_arm_hp_template (work, mangled, 0, declp);

    }

  if (LUCID_DEMANGLING || ARM_DEMANGLING || HP_DEMANGLING || EDG_DEMANGLING)
    {






      if (strcmp (declp -> b, "__ct") == 0)
 {
   work -> constructor += 1;
   string_clear (declp);
   return;
 }
      else if (strcmp (declp -> b, "__dt") == 0)
 {
   work -> destructor += 1;
   string_clear (declp);
   return;
 }
    }

  if (declp->p - declp->b >= 3
      && declp->b[0] == 'o'
      && declp->b[1] == 'p'
      && strchr (cplus_markers, declp->b[2]) != ((void*)0))
    {

      if (declp->p - declp->b >= 10
   && memcmp (declp->b + 3, "assign_", 7) == 0)
 {
   for (i = 0; i < ARRAY_SIZE (optable); i++)
     {
       int len = declp->p - declp->b - 10;
       if ((int) strlen (optable[i].in) == len
    && memcmp (optable[i].in, declp->b + 10, len) == 0)
  {
    string_clear (declp);
    string_append (declp, "operator");
    string_append (declp, optable[i].out);
    string_append (declp, "=");
    break;
  }
     }
 }
      else
 {
   for (i = 0; i < ARRAY_SIZE (optable); i++)
     {
       int len = declp->p - declp->b - 3;
       if ((int) strlen (optable[i].in) == len
    && memcmp (optable[i].in, declp->b + 3, len) == 0)
  {
    string_clear (declp);
    string_append (declp, "operator");
    string_append (declp, optable[i].out);
    break;
  }
     }
 }
    }
  else if (declp->p - declp->b >= 5 && memcmp (declp->b, "type", 4) == 0
    && strchr (cplus_markers, declp->b[4]) != ((void*)0))
    {

      tem = declp->b + 5;
      if (do_type (work, &tem, &type))
 {
   string_clear (declp);
   string_append (declp, "operator ");
   string_appends (declp, &type);
   string_delete (&type);
 }
    }
  else if (declp->b[0] == '_' && declp->b[1] == '_'
    && declp->b[2] == 'o' && declp->b[3] == 'p')
    {


      tem = declp->b + 4;
      if (do_type (work, &tem, &type))
 {
   string_clear (declp);
   string_append (declp, "operator ");
   string_appends (declp, &type);
   string_delete (&type);
 }
    }
  else if (declp->b[0] == '_' && declp->b[1] == '_'
    && ISLOWER((unsigned char)declp->b[2])
    && ISLOWER((unsigned char)declp->b[3]))
    {
      if (declp->b[4] == '\0')
 {

   for (i = 0; i < ARRAY_SIZE (optable); i++)
     {
       if (strlen (optable[i].in) == 2
    && memcmp (optable[i].in, declp->b + 2, 2) == 0)
  {
    string_clear (declp);
    string_append (declp, "operator");
    string_append (declp, optable[i].out);
    break;
  }
     }
 }
      else
 {
   if (declp->b[2] == 'a' && declp->b[5] == '\0')
     {

       for (i = 0; i < ARRAY_SIZE (optable); i++)
  {
    if (strlen (optable[i].in) == 3
        && memcmp (optable[i].in, declp->b + 2, 3) == 0)
      {
        string_clear (declp);
        string_append (declp, "operator");
        string_append (declp, optable[i].out);
        break;
      }
  }
     }
 }
    }
}
