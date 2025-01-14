
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpack_trees_options {int dummy; } ;
struct cache_entry {int dummy; } ;
typedef enum unpack_trees_error_types { ____Placeholder_unpack_trees_error_types } unpack_trees_error_types ;


 int ERROR_WOULD_LOSE_ORPHANED_OVERWRITTEN ;
 int ERROR_WOULD_LOSE_UNTRACKED_OVERWRITTEN ;
 int verify_absent_1 (struct cache_entry const*,int,struct unpack_trees_options*) ;

__attribute__((used)) static int verify_absent_sparse(const struct cache_entry *ce,
    enum unpack_trees_error_types error_type,
    struct unpack_trees_options *o)
{
 enum unpack_trees_error_types orphaned_error = error_type;
 if (orphaned_error == ERROR_WOULD_LOSE_UNTRACKED_OVERWRITTEN)
  orphaned_error = ERROR_WOULD_LOSE_ORPHANED_OVERWRITTEN;

 return verify_absent_1(ce, orphaned_error, o);
}
