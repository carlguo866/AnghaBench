
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RangeList {int dummy; } ;
struct Range {int end; int begin; } ;


 int rangelist_add_range (struct RangeList*,int ,int ) ;

__attribute__((used)) static void
rangelist_add_range2(struct RangeList *targets, struct Range range)
{
    rangelist_add_range(targets, range.begin, range.end);
}
