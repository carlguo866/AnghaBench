
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ DCA2_TAG_MAP_BYTE0 ;
 scalar_t__ DCA2_TAG_MAP_BYTE1 ;
 scalar_t__ DCA2_TAG_MAP_BYTE2 ;
 scalar_t__ DCA2_TAG_MAP_BYTE3 ;
 scalar_t__ DCA2_TAG_MAP_BYTE4 ;

__attribute__((used)) static inline int dca2_tag_map_valid(u8 *tag_map)
{
 return ((tag_map[0] == DCA2_TAG_MAP_BYTE0) &&
  (tag_map[1] == DCA2_TAG_MAP_BYTE1) &&
  (tag_map[2] == DCA2_TAG_MAP_BYTE2) &&
  (tag_map[3] == DCA2_TAG_MAP_BYTE3) &&
  (tag_map[4] == DCA2_TAG_MAP_BYTE4));
}
