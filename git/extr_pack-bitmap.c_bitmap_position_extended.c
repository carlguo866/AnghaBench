
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct object_id {int dummy; } ;
struct TYPE_3__ {int * positions; } ;
struct bitmap_index {TYPE_2__* pack; TYPE_1__ ext_index; } ;
typedef scalar_t__ khiter_t ;
typedef int kh_oid_pos_t ;
struct TYPE_4__ {int num_objects; } ;


 scalar_t__ kh_end (int *) ;
 scalar_t__ kh_get_oid_pos (int *,struct object_id const) ;
 int kh_value (int *,scalar_t__) ;

__attribute__((used)) static inline int bitmap_position_extended(struct bitmap_index *bitmap_git,
        const struct object_id *oid)
{
 kh_oid_pos_t *positions = bitmap_git->ext_index.positions;
 khiter_t pos = kh_get_oid_pos(positions, *oid);

 if (pos < kh_end(positions)) {
  int bitmap_pos = kh_value(positions, pos);
  return bitmap_pos + bitmap_git->pack->num_objects;
 }

 return -1;
}
