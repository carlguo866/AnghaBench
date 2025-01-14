
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int boolean_t ;


 int C_SEG_MAX_PAGES ;
 int VM_PAGE_COMPRESSOR_COUNT ;
 int c_segment_count ;
 int c_segments_nearing_limit ;
 int c_swappedout_count ;
 int c_swappedout_sparse_count ;

__attribute__((used)) static inline boolean_t vm_compressor_needs_to_major_compact()
{
 uint32_t incore_seg_count;

 incore_seg_count = c_segment_count - c_swappedout_count - c_swappedout_sparse_count;

 if ((c_segment_count >= (c_segments_nearing_limit / 8)) &&
     ((incore_seg_count * C_SEG_MAX_PAGES) - VM_PAGE_COMPRESSOR_COUNT) >
     ((incore_seg_count / 8) * C_SEG_MAX_PAGES))
  return (1);
 return (0);
}
