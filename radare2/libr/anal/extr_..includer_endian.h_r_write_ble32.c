
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;


 int r_write_be32 (void*,int ) ;
 int r_write_le32 (void*,int ) ;

__attribute__((used)) static inline void r_write_ble32(void *dest, ut32 val, bool big_endian) {
 big_endian? r_write_be32 (dest, val): r_write_le32 (dest, val);
}
