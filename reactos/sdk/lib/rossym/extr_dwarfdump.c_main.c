
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ulong ;
struct TYPE_10__ {int lowpc; int ranges; int location; } ;
struct TYPE_8__ {int data; int len; } ;
struct TYPE_9__ {int c; TYPE_1__ b; } ;
struct TYPE_11__ {int tag; int lowpc; int highpc; TYPE_3__ have; int ranges; TYPE_2__ location; int name; int isexternal; } ;
struct TYPE_12__ {TYPE_4__ attrs; } ;
typedef char Pe ;
typedef TYPE_5__ DwarfSym ;
typedef char Dwarf ;
 scalar_t__ dwarfenum (char*,TYPE_5__*) ;
 int dwarfnextsym (char*,TYPE_5__*) ;
 char* dwarfopen (char*) ;
 int dwarfpctoline (char*,int,char**,char**,char**,int *,int *,int *) ;
 int encodefmt ;
 int exits (int ) ;
 int exprfmt ;
 int fmtinstall (char,int ) ;
 char* nil ;
 char* peopen (char*) ;
 int print (char*,...) ;
 int printrules (char*,int) ;
 int sysfatal (char*,...) ;
 int usage () ;

void
main(int argc, char **argv)
{
 int c;
 Pe *pe;
 Dwarf *d;
 DwarfSym s;
 char *cdir, *dir, *file;
 ulong line, mtime, length;

 if(argc != 2)
  usage();






 if((pe = peopen(argv[1])) == nil)
  sysfatal("elfopen %s: %r", argv[1]);
 if((d=dwarfopen(pe)) == nil)
  sysfatal("dwarfopen: %r");

 if(dwarfenum(d, &s) < 0)
  sysfatal("dwarfenumall: %r");

 while(dwarfnextsym(d, &s) == 1){
  switch(s.attrs.tag){
  case 132:
   print("compileunit %s\n", s.attrs.name);
   break;
  case 129:
   c = 't';
   goto sym;
  case 128:
   c = 'd';
   goto sym;
  case 131:
   c = 'c';
   goto sym;
  case 130:
   if(!s.attrs.name)
    break;
   c = 'p';
  sym:
   if(s.attrs.isexternal)
    c += 'A' - 'a';
   print("%c %s", c, s.attrs.name);
   if(s.attrs.have.lowpc)
    print(" 0x%lux-0x%lux", s.attrs.lowpc, s.attrs.highpc);
   switch(s.attrs.have.location){
   case 134:
    print(" @ %.*H", s.attrs.location.b.len, s.attrs.location.b.data);
    break;
   case 133:
    print(" @ 0x%lux", s.attrs.location.c);
    break;
   }
   if(s.attrs.have.ranges)
    print(" ranges@0x%lux", s.attrs.ranges);
   print("\n");
   if(s.attrs.have.lowpc){
    if(dwarfpctoline(d, s.attrs.lowpc, &cdir, &dir, &file, &line, &mtime, &length) < 0)
     print("\tcould not find source: %r\n");
    else if(dir == nil)
     print("\t%s/%s:%lud mtime=%lud length=%lud\n",
      cdir, file, line, mtime, length);
    else
     print("\t%s/%s/%s:%lud mtime=%lud length=%lud\n",
      cdir, dir, file, line, mtime, length);

    if(0) printrules(d, s.attrs.lowpc);
    if(0) printrules(d, (s.attrs.lowpc+s.attrs.highpc)/2);
   }
   break;
  }
 }
 exits(0);
}
