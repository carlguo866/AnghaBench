
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int memset (struct type**,int ,int) ;
 struct type** type_vector ;
 int type_vector_length ;
 scalar_t__ xrealloc (char*,int) ;

__attribute__((used)) static struct type **
coff_lookup_type (int index)
{
  if (index >= type_vector_length)
    {
      int old_vector_length = type_vector_length;

      type_vector_length *= 2;
      if (index >= type_vector_length)
 type_vector_length = index * 2;

      type_vector = (struct type **)
 xrealloc ((char *) type_vector,
    type_vector_length * sizeof (struct type *));
      memset (&type_vector[old_vector_length], 0,
  (type_vector_length - old_vector_length) * sizeof (struct type *));
    }
  return &type_vector[index];
}
