
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {unsigned int kernel; int preloaded; scalar_t__ is_static; } ;
struct module {int skip; } ;


 int export_no (char*) ;
 int fatal (char*) ;
 struct module* find_module (char*) ;
 char* get_next_line (unsigned long*,void*,unsigned long) ;
 void* grab_file (char const*,unsigned long*) ;
 int have_vmlinux ;
 scalar_t__ is_vmlinux (char*) ;
 struct module* new_module (char*) ;
 int release_file (void*,unsigned long) ;
 char* strchr (char*,char) ;
 unsigned int strtoul (char*,char**,int) ;
 struct symbol* sym_add_exported (char*,struct module*,int ) ;
 int sym_update_crc (char*,struct module*,unsigned int,int ) ;
 int sym_update_namespace (char*,char*) ;

__attribute__((used)) static void read_dump(const char *fname, unsigned int kernel)
{
 unsigned long size, pos = 0;
 void *file = grab_file(fname, &size);
 char *line;

 if (!file)

  return;

 while ((line = get_next_line(&pos, file, size))) {
  char *symname, *namespace, *modname, *d, *export, *end;
  unsigned int crc;
  struct module *mod;
  struct symbol *s;

  if (!(symname = strchr(line, '\t')))
   goto fail;
  *symname++ = '\0';
  if (!(namespace = strchr(symname, '\t')))
   goto fail;
  *namespace++ = '\0';
  if (!(modname = strchr(namespace, '\t')))
   goto fail;
  *modname++ = '\0';
  if ((export = strchr(modname, '\t')) != ((void*)0))
   *export++ = '\0';
  if (export && ((end = strchr(export, '\t')) != ((void*)0)))
   *end = '\0';
  crc = strtoul(line, &d, 16);
  if (*symname == '\0' || *modname == '\0' || *d != '\0')
   goto fail;
  mod = find_module(modname);
  if (!mod) {
   if (is_vmlinux(modname))
    have_vmlinux = 1;
   mod = new_module(modname);
   mod->skip = 1;
  }
  s = sym_add_exported(symname, mod, export_no(export));
  s->kernel = kernel;
  s->preloaded = 1;
  s->is_static = 0;
  sym_update_crc(symname, mod, crc, export_no(export));
  sym_update_namespace(symname, namespace);
 }
 release_file(file, size);
 return;
fail:
 release_file(file, size);
 fatal("parse error in symbol dump file\n");
}
