
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct btf_verifier_env {struct btf* btf; } ;
struct btf_sec_info {size_t off; size_t len; } ;
struct btf_header {size_t hdr_len; } ;
struct btf {struct btf_header hdr; } ;


 size_t ARRAY_SIZE (int*) ;
 int EINVAL ;
 int btf_sec_info_cmp ;
 int* btf_sec_info_offset ;
 int btf_verifier_log (struct btf_verifier_env*,char*) ;
 int sort (struct btf_sec_info*,size_t,int,int ,int *) ;

__attribute__((used)) static int btf_check_sec_info(struct btf_verifier_env *env,
         u32 btf_data_size)
{
 struct btf_sec_info secs[ARRAY_SIZE(btf_sec_info_offset)];
 u32 total, expected_total, i;
 const struct btf_header *hdr;
 const struct btf *btf;

 btf = env->btf;
 hdr = &btf->hdr;


 for (i = 0; i < ARRAY_SIZE(btf_sec_info_offset); i++)
  secs[i] = *(struct btf_sec_info *)((void *)hdr +
         btf_sec_info_offset[i]);

 sort(secs, ARRAY_SIZE(btf_sec_info_offset),
      sizeof(struct btf_sec_info), btf_sec_info_cmp, ((void*)0));


 total = 0;
 expected_total = btf_data_size - hdr->hdr_len;
 for (i = 0; i < ARRAY_SIZE(btf_sec_info_offset); i++) {
  if (expected_total < secs[i].off) {
   btf_verifier_log(env, "Invalid section offset");
   return -EINVAL;
  }
  if (total < secs[i].off) {

   btf_verifier_log(env, "Unsupported section found");
   return -EINVAL;
  }
  if (total > secs[i].off) {
   btf_verifier_log(env, "Section overlap found");
   return -EINVAL;
  }
  if (expected_total - total < secs[i].len) {
   btf_verifier_log(env,
      "Total section length too long");
   return -EINVAL;
  }
  total += secs[i].len;
 }


 if (expected_total != total) {
  btf_verifier_log(env, "Unsupported section found");
  return -EINVAL;
 }

 return 0;
}
