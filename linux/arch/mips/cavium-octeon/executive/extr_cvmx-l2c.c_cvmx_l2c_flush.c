
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int CVMX_ADD_SEG (int ,int) ;
 int CVMX_CACHE_WBIL2I (int,int ) ;
 int CVMX_L2C_IDX_ADDR_SHIFT ;
 int CVMX_L2C_TAG_ADDR_ALIAS_SHIFT ;
 int CVMX_MIPS_SPACE_XKPHYS ;
 int OCTEON_CN6XXX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 int cvmx_l2c_flush_line (int,int) ;
 int cvmx_l2c_get_num_assoc () ;
 int cvmx_l2c_get_num_sets () ;

void cvmx_l2c_flush(void)
{
 uint64_t assoc, set;
 uint64_t n_assoc, n_set;

 n_set = cvmx_l2c_get_num_sets();
 n_assoc = cvmx_l2c_get_num_assoc();

 if (OCTEON_IS_MODEL(OCTEON_CN6XXX)) {
  uint64_t address;

  int assoc_shift = CVMX_L2C_TAG_ADDR_ALIAS_SHIFT;
  int set_shift = CVMX_L2C_IDX_ADDR_SHIFT;

  for (set = 0; set < n_set; set++) {
   for (assoc = 0; assoc < n_assoc; assoc++) {
    address = CVMX_ADD_SEG(CVMX_MIPS_SPACE_XKPHYS,
             (assoc << assoc_shift) | (set << set_shift));
    CVMX_CACHE_WBIL2I(address, 0);
   }
  }
 } else {
  for (set = 0; set < n_set; set++)
   for (assoc = 0; assoc < n_assoc; assoc++)
    cvmx_l2c_flush_line(assoc, set);
 }
}
