
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_prog_linfo {void* raw_jited_linfo; size_t* jited_linfo_func_idx; size_t nr_jited_func; size_t nr_linfo; size_t* nr_jited_linfo_per_func; int jited_rec_size; } ;
typedef scalar_t__ __u64 ;
typedef size_t __u32 ;


 int EINVAL ;

__attribute__((used)) static int dissect_jited_func(struct bpf_prog_linfo *prog_linfo,
         const __u64 *ksym_func, const __u32 *ksym_len)
{
 __u32 nr_jited_func, nr_linfo;
 const void *raw_jited_linfo;
 const __u64 *jited_linfo;
 __u64 last_jited_linfo;





 __u32 i, prev_i;
 __u32 f;

 raw_jited_linfo = prog_linfo->raw_jited_linfo;
 jited_linfo = raw_jited_linfo;
 if (ksym_func[0] != *jited_linfo)
  goto errout;

 prog_linfo->jited_linfo_func_idx[0] = 0;
 nr_jited_func = prog_linfo->nr_jited_func;
 nr_linfo = prog_linfo->nr_linfo;

 for (prev_i = 0, i = 1, f = 1;
      i < nr_linfo && f < nr_jited_func;
      i++) {
  raw_jited_linfo += prog_linfo->jited_rec_size;
  last_jited_linfo = *jited_linfo;
  jited_linfo = raw_jited_linfo;

  if (ksym_func[f] == *jited_linfo) {
   prog_linfo->jited_linfo_func_idx[f] = i;


   if (last_jited_linfo - ksym_func[f - 1] + 1 >
       ksym_len[f - 1])
    goto errout;

   prog_linfo->nr_jited_linfo_per_func[f - 1] =
    i - prev_i;
   prev_i = i;





   f++;
  } else if (*jited_linfo <= last_jited_linfo) {

   goto errout;
  }
 }

 if (f != nr_jited_func)
  goto errout;

 prog_linfo->nr_jited_linfo_per_func[nr_jited_func - 1] =
  nr_linfo - prev_i;

 return 0;

errout:
 return -EINVAL;
}
