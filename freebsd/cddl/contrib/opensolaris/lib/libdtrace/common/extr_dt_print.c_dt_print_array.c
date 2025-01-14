
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ulong_t ;
typedef int ssize_t ;
struct TYPE_8__ {scalar_t__ pa_depth; scalar_t__ pa_addr; int pa_nest; int * pa_ctfp; int * pa_file; } ;
typedef TYPE_1__ dt_printarg_t ;
typedef int ctf_id_t ;
typedef int ctf_file_t ;
typedef int ctf_encoding_t ;
struct TYPE_9__ {int ctr_nelems; int ctr_contents; } ;
typedef TYPE_2__ ctf_arinfo_t ;
typedef scalar_t__ caddr_t ;
typedef scalar_t__ boolean_t ;
typedef int FILE ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int CTF_ERR ;
 scalar_t__ CTF_IS_CHAR (int ) ;
 scalar_t__ CTF_IS_STRUCTLIKE (int) ;
 int CTF_K_INTEGER ;
 int NBBY ;
 int ctf_array_info (int *,int,TYPE_2__*) ;
 int ctf_type_encoding (int *,int,int *) ;
 int ctf_type_kind (int *,int) ;
 int ctf_type_resolve (int *,int ) ;
 int ctf_type_size (int *,int ) ;
 int ctf_type_visit (int *,int ,int ,TYPE_1__*) ;
 int dt_print_indent (TYPE_1__*) ;
 int dt_print_member ;
 int dt_print_trailing_braces (TYPE_1__*,int ) ;
 int fprintf (int *,char*,...) ;
 int isprint (char) ;

__attribute__((used)) static void
dt_print_array(ctf_id_t base, ulong_t off, dt_printarg_t *pap)
{
 FILE *fp = pap->pa_file;
 ctf_file_t *ctfp = pap->pa_ctfp;
 caddr_t addr = pap->pa_addr + off / NBBY;
 ctf_arinfo_t car;
 ssize_t eltsize;
 ctf_encoding_t e;
 int i;
 boolean_t isstring;
 int kind;
 ctf_id_t rtype;

 if (ctf_array_info(ctfp, base, &car) == CTF_ERR) {
  (void) fprintf(fp, "%p", (void *)addr);
  return;
 }

 if ((eltsize = ctf_type_size(ctfp, car.ctr_contents)) < 0 ||
     (rtype = ctf_type_resolve(ctfp, car.ctr_contents)) == CTF_ERR ||
     (kind = ctf_type_kind(ctfp, rtype)) == CTF_ERR) {
  (void) fprintf(fp, "<invalid type %lu>", car.ctr_contents);
  return;
 }


 isstring = B_FALSE;
 if (kind == CTF_K_INTEGER &&
     ctf_type_encoding(ctfp, rtype, &e) != CTF_ERR && CTF_IS_CHAR(e)) {
  char c;
  for (i = 0; i < car.ctr_nelems; i++) {
   c = *((char *)addr + eltsize * i);
   if (!isprint(c) || c == '\0')
    break;
  }

  if (i != car.ctr_nelems && c == '\0')
   isstring = B_TRUE;
 }
 if (!isstring || pap->pa_depth != 0)
  (void) fprintf(fp, "[ ");

 if (isstring)
  (void) fprintf(fp, "\"");

 for (i = 0; i < car.ctr_nelems; i++) {
  if (isstring) {
   char c = *((char *)addr + eltsize * i);
   if (c == '\0')
    break;
   (void) fprintf(fp, "%c", c);
  } else {





   dt_printarg_t pa = *pap;
   pa.pa_nest += pap->pa_depth + 1;
   pa.pa_depth = 0;
   pa.pa_addr = addr + eltsize * i;
   (void) ctf_type_visit(ctfp, car.ctr_contents,
       dt_print_member, &pa);

   dt_print_trailing_braces(&pa, 0);
   if (i != car.ctr_nelems - 1)
    (void) fprintf(fp, ", ");
   else if (CTF_IS_STRUCTLIKE(kind))
    (void) fprintf(fp, "\n");
  }
 }

 if (isstring)
  (void) fprintf(fp, "\"");

 if (!isstring || pap->pa_depth != 0) {
  if (CTF_IS_STRUCTLIKE(kind))
   dt_print_indent(pap);
  else
   (void) fprintf(fp, " ");
  (void) fprintf(fp, "]");
 }
}
