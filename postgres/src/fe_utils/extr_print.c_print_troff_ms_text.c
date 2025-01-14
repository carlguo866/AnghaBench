
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {char const* const data; struct TYPE_8__* next; } ;
typedef TYPE_2__ printTableFooter ;
struct TYPE_9__ {char const* const title; unsigned int ncolumns; char* aligns; char** headers; char** cells; TYPE_1__* opt; } ;
typedef TYPE_3__ printTableContent ;
struct TYPE_7__ {int tuples_only; unsigned short border; scalar_t__ stop_table; scalar_t__ start_table; } ;
typedef int FILE ;


 scalar_t__ cancel_pressed ;
 TYPE_2__* footers_with_default (TYPE_3__ const*) ;
 int fputc (char,int *) ;
 int fputs (char*,int *) ;
 int troff_ms_escaped_print (char const* const,int *) ;

__attribute__((used)) static void
print_troff_ms_text(const printTableContent *cont, FILE *fout)
{
 bool opt_tuples_only = cont->opt->tuples_only;
 unsigned short opt_border = cont->opt->border;
 unsigned int i;
 const char *const *ptr;

 if (cancel_pressed)
  return;

 if (opt_border > 2)
  opt_border = 2;

 if (cont->opt->start_table)
 {

  if (!opt_tuples_only && cont->title)
  {
   fputs(".LP\n.DS C\n", fout);
   troff_ms_escaped_print(cont->title, fout);
   fputs("\n.DE\n", fout);
  }


  fputs(".LP\n.TS\n", fout);
  if (opt_border == 2)
   fputs("center box;\n", fout);
  else
   fputs("center;\n", fout);

  for (i = 0; i < cont->ncolumns; i++)
  {
   fputc(*(cont->aligns + i), fout);
   if (opt_border > 0 && i < cont->ncolumns - 1)
    fputs(" | ", fout);
  }
  fputs(".\n", fout);


  if (!opt_tuples_only)
  {
   for (i = 0, ptr = cont->headers; i < cont->ncolumns; i++, ptr++)
   {
    if (i != 0)
     fputc('\t', fout);
    fputs("\\fI", fout);
    troff_ms_escaped_print(*ptr, fout);
    fputs("\\fP", fout);
   }
   fputs("\n_\n", fout);
  }
 }


 for (i = 0, ptr = cont->cells; *ptr; i++, ptr++)
 {
  troff_ms_escaped_print(*ptr, fout);

  if ((i + 1) % cont->ncolumns == 0)
  {
   fputc('\n', fout);
   if (cancel_pressed)
    break;
  }
  else
   fputc('\t', fout);
 }

 if (cont->opt->stop_table)
 {
  printTableFooter *footers = footers_with_default(cont);

  fputs(".TE\n.DS L\n", fout);


  if (footers && !opt_tuples_only && !cancel_pressed)
  {
   printTableFooter *f;

   for (f = footers; f; f = f->next)
   {
    troff_ms_escaped_print(f->data, fout);
    fputc('\n', fout);
   }
  }

  fputs(".DE\n", fout);
 }
}
