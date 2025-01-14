
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_node {int rn_offset; int rn_flags; int rn_bit; int rn_info; struct radix_node* rn_right; struct radix_node* rn_left; struct radix_node* rn_parent; struct radix_mask* rn_mklist; struct radix_node* rn_dupedkey; struct radix_node* rn_ybro; void* rn_mask; void* rn_key; } ;
struct radix_mask {scalar_t__ rm_refs; struct radix_mask* rm_mklist; void* rm_mask; struct radix_node* rm_leaf; } ;
struct radix_head {int rnh_masks; struct radix_node* rnh_treetop; } ;
typedef void* caddr_t ;


 int LEN (void*) ;
 int LOG_ERR ;
 int RNF_ACTIVE ;
 int RNF_NORMAL ;
 int RNF_ROOT ;
 int R_Free (struct radix_mask*) ;
 scalar_t__ bcmp (void*,void*,int) ;
 int log (int ,char*,...) ;
 struct radix_node* rn_addmask (void*,int ,int,int) ;
 struct radix_node* rn_clist ;
 struct radix_node* rn_search (void*,struct radix_node*) ;

struct radix_node *
rn_delete(void *v_arg, void *netmask_arg, struct radix_head *head)
{
 struct radix_node *t, *p, *x, *tt;
 struct radix_mask *m, *saved_m, **mp;
 struct radix_node *dupedkey, *saved_tt, *top;
 caddr_t v, netmask;
 int b, head_off, vlen;

 v = v_arg;
 netmask = netmask_arg;
 x = head->rnh_treetop;
 tt = rn_search(v, x);
 head_off = x->rn_offset;
 vlen = LEN(v);
 saved_tt = tt;
 top = x;
 if (tt == ((void*)0) ||
     bcmp(v + head_off, tt->rn_key + head_off, vlen - head_off))
  return (0);



 if (netmask) {
  x = rn_addmask(netmask, head->rnh_masks, 1, head_off);
  if (x == ((void*)0))
   return (0);
  netmask = x->rn_key;
  while (tt->rn_mask != netmask)
   if ((tt = tt->rn_dupedkey) == ((void*)0))
    return (0);
 }
 if (tt->rn_mask == 0 || (saved_m = m = tt->rn_mklist) == ((void*)0))
  goto on1;
 if (tt->rn_flags & RNF_NORMAL) {
  if (m->rm_leaf != tt || m->rm_refs > 0) {
   log(LOG_ERR, "rn_delete: inconsistent annotation\n");
   return (0);
  }
 } else {
  if (m->rm_mask != tt->rn_mask) {
   log(LOG_ERR, "rn_delete: inconsistent annotation\n");
   goto on1;
  }
  if (--m->rm_refs >= 0)
   goto on1;
 }
 b = -1 - tt->rn_bit;
 t = saved_tt->rn_parent;
 if (b > t->rn_bit)
  goto on1;
 do {
  x = t;
  t = t->rn_parent;
 } while (b <= t->rn_bit && x != top);
 for (mp = &x->rn_mklist; (m = *mp); mp = &m->rm_mklist)
  if (m == saved_m) {
   *mp = m->rm_mklist;
   R_Free(m);
   break;
  }
 if (m == ((void*)0)) {
  log(LOG_ERR, "rn_delete: couldn't find our annotation\n");
  if (tt->rn_flags & RNF_NORMAL)
   return (0);
 }
on1:



 if (tt->rn_flags & RNF_ROOT)
  return (0);





 t = tt->rn_parent;
 dupedkey = saved_tt->rn_dupedkey;
 if (dupedkey) {




  if (tt == saved_tt) {

   x = dupedkey; x->rn_parent = t;
   if (t->rn_left == tt)
    t->rn_left = x;
   else
    t->rn_right = x;
  } else {

   for (x = p = saved_tt; p && p->rn_dupedkey != tt;)
    p = p->rn_dupedkey;
   if (p) {
    p->rn_dupedkey = tt->rn_dupedkey;
    if (tt->rn_dupedkey)
     tt->rn_dupedkey->rn_parent = p;

   } else log(LOG_ERR, "rn_delete: couldn't find us\n");
  }
  t = tt + 1;
  if (t->rn_flags & RNF_ACTIVE) {

   *++x = *t;
   p = t->rn_parent;






   if (p->rn_left == t)
    p->rn_left = x;
   else
    p->rn_right = x;
   x->rn_left->rn_parent = x;
   x->rn_right->rn_parent = x;
  }
  goto out;
 }
 if (t->rn_left == tt)
  x = t->rn_right;
 else
  x = t->rn_left;
 p = t->rn_parent;
 if (p->rn_right == t)
  p->rn_right = x;
 else
  p->rn_left = x;
 x->rn_parent = p;



 if (t->rn_mklist) {
  if (x->rn_bit >= 0) {
   for (mp = &x->rn_mklist; (m = *mp);)
    mp = &m->rm_mklist;
   *mp = t->rn_mklist;
  } else {



   for (m = t->rn_mklist; m && x; x = x->rn_dupedkey)
    if (m == x->rn_mklist) {
     struct radix_mask *mm = m->rm_mklist;
     x->rn_mklist = 0;
     if (--(m->rm_refs) < 0)
      R_Free(m);
     m = mm;
    }
   if (m)
    log(LOG_ERR,
        "rn_delete: Orphaned Mask %p at %p\n",
        m, x);
  }
 }



 x = tt + 1;
 if (t != x) {

  *t = *x;





  t->rn_left->rn_parent = t;
  t->rn_right->rn_parent = t;
  p = x->rn_parent;
  if (p->rn_left == x)
   p->rn_left = t;
  else
   p->rn_right = t;
 }
out:
 tt->rn_flags &= ~RNF_ACTIVE;
 tt[1].rn_flags &= ~RNF_ACTIVE;
 return (tt);
}
