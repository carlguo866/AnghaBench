
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_header {int file_names_size; int num_file_names; struct file_entry* file_names; } ;
struct file_entry {char* name; unsigned int dir_index; unsigned int mod_time; unsigned int length; } ;


 struct file_entry* xmalloc (int) ;
 struct file_entry* xrealloc (struct file_entry*,int) ;

__attribute__((used)) static void
add_file_name (struct line_header *lh,
               char *name,
               unsigned int dir_index,
               unsigned int mod_time,
               unsigned int length)
{
  struct file_entry *fe;


  if (lh->file_names_size == 0)
    {
      lh->file_names_size = 1;
      lh->file_names = xmalloc (lh->file_names_size
                                * sizeof (*lh->file_names));
    }
  else if (lh->num_file_names >= lh->file_names_size)
    {
      lh->file_names_size *= 2;
      lh->file_names = xrealloc (lh->file_names,
                                 (lh->file_names_size
                                  * sizeof (*lh->file_names)));
    }

  fe = &lh->file_names[lh->num_file_names++];
  fe->name = name;
  fe->dir_index = dir_index;
  fe->mod_time = mod_time;
  fe->length = length;
}
