
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ U32 ;
struct TYPE_6__ {scalar_t__ value; scalar_t__ key; } ;
struct TYPE_5__ {TYPE_2__* data; } ;
typedef TYPE_1__ COVER_map_t ;
typedef TYPE_2__ COVER_map_pair_t ;


 size_t COVER_map_index (TYPE_1__*,scalar_t__) ;
 scalar_t__ MAP_EMPTY_VALUE ;

__attribute__((used)) static U32 *COVER_map_at(COVER_map_t *map, U32 key) {
  COVER_map_pair_t *pos = &map->data[COVER_map_index(map, key)];
  if (pos->value == MAP_EMPTY_VALUE) {
    pos->key = key;
    pos->value = 0;
  }
  return &pos->value;
}
