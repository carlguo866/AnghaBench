
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut64 ;


 int r_read_be64 (int const*) ;

__attribute__((used)) static inline ut64 r_read_at_be64(const void *src, size_t offset) {
 const ut8 *s = (const ut8*)src + offset;
 return r_read_be64 (s);
}
