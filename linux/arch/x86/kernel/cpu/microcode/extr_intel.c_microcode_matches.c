
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct microcode_header_intel {unsigned long sig; } ;
struct extended_sigtable {int count; } ;
struct extended_signature {unsigned long sig; } ;


 int EXT_HEADER_SIZE ;
 unsigned long MC_HEADER_SIZE ;
 unsigned long get_datasize (struct microcode_header_intel*) ;
 unsigned long get_totalsize (struct microcode_header_intel*) ;
 unsigned int x86_family (unsigned long) ;
 unsigned int x86_model (unsigned long) ;

__attribute__((used)) static bool microcode_matches(struct microcode_header_intel *mc_header,
         unsigned long sig)
{
 unsigned long total_size = get_totalsize(mc_header);
 unsigned long data_size = get_datasize(mc_header);
 struct extended_sigtable *ext_header;
 unsigned int fam_ucode, model_ucode;
 struct extended_signature *ext_sig;
 unsigned int fam, model;
 int ext_sigcount, i;

 fam = x86_family(sig);
 model = x86_model(sig);

 fam_ucode = x86_family(mc_header->sig);
 model_ucode = x86_model(mc_header->sig);

 if (fam == fam_ucode && model == model_ucode)
  return 1;


 if (total_size <= data_size + MC_HEADER_SIZE)
  return 0;

 ext_header = (void *) mc_header + data_size + MC_HEADER_SIZE;
 ext_sig = (void *)ext_header + EXT_HEADER_SIZE;
 ext_sigcount = ext_header->count;

 for (i = 0; i < ext_sigcount; i++) {
  fam_ucode = x86_family(ext_sig->sig);
  model_ucode = x86_model(ext_sig->sig);

  if (fam == fam_ucode && model == model_ucode)
   return 1;

  ext_sig++;
 }
 return 0;
}
