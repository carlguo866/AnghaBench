
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int timelib_sll ;
struct TYPE_3__ {int type; int value; scalar_t__ name; } ;
typedef TYPE_1__ timelib_lookup_table ;


 int memcpy (char*,char*,int) ;
 char* timelib_calloc (int,int) ;
 int timelib_free (char*) ;
 TYPE_1__* timelib_reltext_lookup ;
 scalar_t__ timelib_strcasecmp (char*,scalar_t__) ;

__attribute__((used)) static timelib_sll timelib_lookup_relative_text(char **ptr, int *behavior)
{
 char *word;
 char *begin = *ptr, *end;
 timelib_sll value = 0;
 const timelib_lookup_table *tp;

 while ((**ptr >= 'A' && **ptr <= 'Z') || (**ptr >= 'a' && **ptr <= 'z')) {
  ++*ptr;
 }
 end = *ptr;
 word = timelib_calloc(1, end - begin + 1);
 memcpy(word, begin, end - begin);

 for (tp = timelib_reltext_lookup; tp->name; tp++) {
  if (timelib_strcasecmp(word, tp->name) == 0) {
   value = tp->value;
   *behavior = tp->type;
  }
 }

 timelib_free(word);
 return value;
}
