
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hl_ctx {int dummy; } ;


 int HOP3_MASK ;
 int HOP3_SHIFT ;
 int get_hopN_pte_addr (struct hl_ctx*,int ,int ,int ,int ) ;

__attribute__((used)) static inline u64 get_hop3_pte_addr(struct hl_ctx *ctx, u64 hop_addr, u64 vaddr)
{
 return get_hopN_pte_addr(ctx, hop_addr, vaddr, HOP3_MASK, HOP3_SHIFT);
}
