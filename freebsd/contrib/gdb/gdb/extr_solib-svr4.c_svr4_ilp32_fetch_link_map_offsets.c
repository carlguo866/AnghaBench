
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_map_offsets {int r_debug_size; int r_map_offset; int r_map_size; int link_map_size; int l_addr_size; int l_name_offset; int l_name_size; int l_next_offset; int l_next_size; int l_prev_offset; int l_prev_size; scalar_t__ l_addr_offset; } ;



struct link_map_offsets *
svr4_ilp32_fetch_link_map_offsets (void)
{
  static struct link_map_offsets lmo;
  static struct link_map_offsets *lmp = ((void*)0);

  if (lmp == ((void*)0))
    {
      lmp = &lmo;


      lmo.r_debug_size = 8;
      lmo.r_map_offset = 4;
      lmo.r_map_size = 4;


      lmo.link_map_size = 20;
      lmo.l_addr_offset = 0;
      lmo.l_addr_size = 4;
      lmo.l_name_offset = 4;
      lmo.l_name_size = 4;
      lmo.l_next_offset = 12;
      lmo.l_next_size = 4;
      lmo.l_prev_offset = 16;
      lmo.l_prev_size = 4;
    }

  return lmp;
}
