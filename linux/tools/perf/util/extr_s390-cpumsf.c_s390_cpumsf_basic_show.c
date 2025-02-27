
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hws_basic_entry {int def; unsigned long long prim_asn; unsigned long long CL; unsigned long long I; unsigned long long AS; unsigned long long P; unsigned long long W; unsigned long long T; unsigned long long U; unsigned long long ia; unsigned long long gpp; unsigned long long hpp; } ;
typedef int local ;


 int be16toh (int) ;
 void* be64toh (unsigned long long) ;
 int color_fprintf (int ,char const*,char*,size_t,int,unsigned long long,char,char,char,char,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long) ;
 int memset (struct hws_basic_entry*,int ,int) ;
 int pr_err (char*,size_t) ;
 int stdout ;

__attribute__((used)) static bool s390_cpumsf_basic_show(const char *color, size_t pos,
       struct hws_basic_entry *basicp)
{
 struct hws_basic_entry *basic = basicp;

 struct hws_basic_entry local;
 unsigned long long word = be64toh(*(unsigned long long *)basicp);

 memset(&local, 0, sizeof(local));
 local.def = be16toh(basicp->def);
 local.prim_asn = word & 0xffff;
 local.CL = word >> 30 & 0x3;
 local.I = word >> 32 & 0x1;
 local.AS = word >> 33 & 0x3;
 local.P = word >> 35 & 0x1;
 local.W = word >> 36 & 0x1;
 local.T = word >> 37 & 0x1;
 local.U = word >> 40 & 0xf;
 local.ia = be64toh(basicp->ia);
 local.gpp = be64toh(basicp->gpp);
 local.hpp = be64toh(basicp->hpp);
 basic = &local;

 if (basic->def != 1) {
  pr_err("Invalid AUX trace basic entry [%#08zx]\n", pos);
  return 0;
 }
 color_fprintf(stdout, color, "    [%#08zx] Basic   Def:%04x Inst:%#04x"
        " %c%c%c%c AS:%d ASN:%#04x IA:%#018llx\n"
        "\t\tCL:%d HPP:%#018llx GPP:%#018llx\n",
        pos, basic->def, basic->U,
        basic->T ? 'T' : ' ',
        basic->W ? 'W' : ' ',
        basic->P ? 'P' : ' ',
        basic->I ? 'I' : ' ',
        basic->AS, basic->prim_asn, basic->ia, basic->CL,
        basic->hpp, basic->gpp);
 return 1;
}
