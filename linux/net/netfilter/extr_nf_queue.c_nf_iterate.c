
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nf_hook_state {int dummy; } ;
struct nf_hook_entry {int dummy; } ;
struct nf_hook_entries {unsigned int num_hook_entries; struct nf_hook_entry* hooks; } ;


 unsigned int NF_ACCEPT ;
 unsigned int NF_REPEAT ;
 unsigned int nf_hook_entry_hookfn (struct nf_hook_entry const*,struct sk_buff*,struct nf_hook_state*) ;

__attribute__((used)) static unsigned int nf_iterate(struct sk_buff *skb,
          struct nf_hook_state *state,
          const struct nf_hook_entries *hooks,
          unsigned int *index)
{
 const struct nf_hook_entry *hook;
 unsigned int verdict, i = *index;

 while (i < hooks->num_hook_entries) {
  hook = &hooks->hooks[i];
repeat:
  verdict = nf_hook_entry_hookfn(hook, skb, state);
  if (verdict != NF_ACCEPT) {
   *index = i;
   if (verdict != NF_REPEAT)
    return verdict;
   goto repeat;
  }
  i++;
 }

 *index = i;
 return NF_ACCEPT;
}
