
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_type {int dummy; } ;
struct btf_member {int offset; } ;
typedef int __u32 ;


 int BTF_MEMBER_BITFIELD_SIZE (int ) ;
 int btf_kflag (struct btf_type const*) ;
 struct btf_member* btf_members (struct btf_type const*) ;

__attribute__((used)) static inline __u32 btf_member_bitfield_size(const struct btf_type *t,
          __u32 member_idx)
{
 const struct btf_member *m = btf_members(t) + member_idx;
 bool kflag = btf_kflag(t);

 return kflag ? BTF_MEMBER_BITFIELD_SIZE(m->offset) : 0;
}
