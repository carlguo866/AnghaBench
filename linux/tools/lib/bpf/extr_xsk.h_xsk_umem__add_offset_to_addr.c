
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __u64 ;


 scalar_t__ xsk_umem__extract_addr (scalar_t__) ;
 scalar_t__ xsk_umem__extract_offset (scalar_t__) ;

__attribute__((used)) static inline __u64 xsk_umem__add_offset_to_addr(__u64 addr)
{
 return xsk_umem__extract_addr(addr) + xsk_umem__extract_offset(addr);
}
