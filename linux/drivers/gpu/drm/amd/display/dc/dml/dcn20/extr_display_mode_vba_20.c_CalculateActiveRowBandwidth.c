
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum source_format_class { ____Placeholder_source_format_class } source_format_class ;


 int dm_420_10 ;
 int dm_420_8 ;

__attribute__((used)) static void CalculateActiveRowBandwidth(
  bool GPUVMEnable,
  enum source_format_class SourcePixelFormat,
  double VRatio,
  bool DCCEnable,
  double LineTime,
  unsigned int MetaRowByteLuma,
  unsigned int MetaRowByteChroma,
  unsigned int meta_row_height_luma,
  unsigned int meta_row_height_chroma,
  unsigned int PixelPTEBytesPerRowLuma,
  unsigned int PixelPTEBytesPerRowChroma,
  unsigned int dpte_row_height_luma,
  unsigned int dpte_row_height_chroma,
  double *meta_row_bw,
  double *dpte_row_bw,
  double *qual_row_bw)
{
 if (DCCEnable != 1) {
  *meta_row_bw = 0;
 } else if (SourcePixelFormat == dm_420_8 || SourcePixelFormat == dm_420_10) {
  *meta_row_bw = VRatio * MetaRowByteLuma / (meta_row_height_luma * LineTime)
    + VRatio / 2 * MetaRowByteChroma
      / (meta_row_height_chroma * LineTime);
 } else {
  *meta_row_bw = VRatio * MetaRowByteLuma / (meta_row_height_luma * LineTime);
 }

 if (GPUVMEnable != 1) {
  *dpte_row_bw = 0;
 } else if (SourcePixelFormat == dm_420_8 || SourcePixelFormat == dm_420_10) {
  *dpte_row_bw = VRatio * PixelPTEBytesPerRowLuma / (dpte_row_height_luma * LineTime)
    + VRatio / 2 * PixelPTEBytesPerRowChroma
      / (dpte_row_height_chroma * LineTime);
 } else {
  *dpte_row_bw = VRatio * PixelPTEBytesPerRowLuma / (dpte_row_height_luma * LineTime);
 }

 if ((SourcePixelFormat == dm_420_8 || SourcePixelFormat == dm_420_10)) {
  *qual_row_bw = *meta_row_bw + *dpte_row_bw;
 } else {
  *qual_row_bw = 0;
 }
}
