
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_ext {int line_info; } ;
struct btf {int dummy; } ;
typedef int __u32 ;


 int btf_ext_reloc_info (struct btf const*,int *,char const*,int ,void**,int *) ;

int btf_ext__reloc_line_info(const struct btf *btf,
        const struct btf_ext *btf_ext,
        const char *sec_name, __u32 insns_cnt,
        void **line_info, __u32 *cnt)
{
 return btf_ext_reloc_info(btf, &btf_ext->line_info, sec_name,
      insns_cnt, line_info, cnt);
}
