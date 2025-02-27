
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct type {int dummy; } ;
typedef enum type_code { ____Placeholder_type_code } type_code ;


 int CHECK_TYPEDEF (struct type*) ;
 int TYPE_CODE (struct type*) ;
 int TYPE_CODE_ARRAY ;
 int TYPE_CODE_FUNC ;
 int TYPE_CODE_MEMBER ;
 int TYPE_CODE_METHOD ;
 int TYPE_CODE_PTR ;
 int TYPE_CODE_REF ;
 scalar_t__ TYPE_NAME (struct type*) ;
 int c_type_print_base (struct type*,struct ui_file*,int,int) ;
 int c_type_print_varspec_prefix (struct type*,struct ui_file*,int,int ,int) ;
 int c_type_print_varspec_suffix (struct type*,struct ui_file*,int,int ,int) ;
 int fputs_filtered (char*,struct ui_file*) ;
 int * strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;

void
c_print_type (struct type *type, char *varstring, struct ui_file *stream,
       int show, int level)
{
  enum type_code code;
  int demangled_args;
  int need_post_space;

  if (show > 0)
    CHECK_TYPEDEF (type);

  c_type_print_base (type, stream, show, level);
  code = TYPE_CODE (type);
  if ((varstring != ((void*)0) && *varstring != '\0')
      ||


      ((show > 0 || TYPE_NAME (type) == 0)
       &&
       (code == TYPE_CODE_PTR || code == TYPE_CODE_FUNC
 || code == TYPE_CODE_METHOD
 || code == TYPE_CODE_ARRAY
 || code == TYPE_CODE_MEMBER
 || code == TYPE_CODE_REF)))
    fputs_filtered (" ", stream);
  need_post_space = (varstring != ((void*)0) && strcmp (varstring, "") != 0);
  c_type_print_varspec_prefix (type, stream, show, 0, need_post_space);

  if (varstring != ((void*)0))
    {
      fputs_filtered (varstring, stream);




      demangled_args = strchr (varstring, '(') != ((void*)0);
      c_type_print_varspec_suffix (type, stream, show, 0, demangled_args);
    }
}
