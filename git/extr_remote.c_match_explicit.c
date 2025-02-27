
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct refspec_item {char* dst; int force; scalar_t__ matching; scalar_t__ pattern; } ;
struct ref {char const* name; int force; struct ref* peer_ref; int new_oid; } ;


 int REF_ISSYMREF ;
 int RESOLVE_REF_READING ;
 int _ (char*) ;
 struct ref* copy_ref (struct ref*) ;
 int count_refspec_match (char const*,struct ref*,struct ref**) ;
 int die (int ,char const*) ;
 int error (int ,char const*) ;
 int free (char*) ;
 char* guess_ref (char const*,struct ref*) ;
 int is_null_oid (int *) ;
 struct ref* make_linked_ref (char const*,struct ref***) ;
 scalar_t__ match_explicit_lhs (struct ref*,struct refspec_item*,struct ref**,int*) ;
 char* resolve_ref_unsafe (char const*,int ,int *,int*) ;
 int show_push_unqualified_ref_name_error (char const*,char const*) ;
 scalar_t__ starts_with (char const*,char*) ;

__attribute__((used)) static int match_explicit(struct ref *src, struct ref *dst,
     struct ref ***dst_tail,
     struct refspec_item *rs)
{
 struct ref *matched_src, *matched_dst;
 int allocated_src;

 const char *dst_value = rs->dst;
 char *dst_guess;

 if (rs->pattern || rs->matching)
  return 0;

 matched_src = matched_dst = ((void*)0);
 if (match_explicit_lhs(src, rs, &matched_src, &allocated_src) < 0)
  return -1;

 if (!dst_value) {
  int flag;

  dst_value = resolve_ref_unsafe(matched_src->name,
            RESOLVE_REF_READING,
            ((void*)0), &flag);
  if (!dst_value ||
      ((flag & REF_ISSYMREF) &&
       !starts_with(dst_value, "refs/heads/")))
   die(_("%s cannot be resolved to branch"),
       matched_src->name);
 }

 switch (count_refspec_match(dst_value, dst, &matched_dst)) {
 case 1:
  break;
 case 0:
  if (starts_with(dst_value, "refs/")) {
   matched_dst = make_linked_ref(dst_value, dst_tail);
  } else if (is_null_oid(&matched_src->new_oid)) {
   error(_("unable to delete '%s': remote ref does not exist"),
         dst_value);
  } else if ((dst_guess = guess_ref(dst_value, matched_src))) {
   matched_dst = make_linked_ref(dst_guess, dst_tail);
   free(dst_guess);
  } else {
   show_push_unqualified_ref_name_error(dst_value,
            matched_src->name);
  }
  break;
 default:
  matched_dst = ((void*)0);
  error(_("dst refspec %s matches more than one"),
        dst_value);
  break;
 }
 if (!matched_dst)
  return -1;
 if (matched_dst->peer_ref)
  return error(_("dst ref %s receives from more than one src"),
        matched_dst->name);
 else {
  matched_dst->peer_ref = allocated_src ?
     matched_src :
     copy_ref(matched_src);
  matched_dst->force = rs->force;
 }
 return 0;
}
