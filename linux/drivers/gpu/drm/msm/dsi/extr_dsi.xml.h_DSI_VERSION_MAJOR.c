
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int DSI_VERSION_MAJOR__MASK ;
 int DSI_VERSION_MAJOR__SHIFT ;

__attribute__((used)) static inline uint32_t DSI_VERSION_MAJOR(uint32_t val)
{
 return ((val) << DSI_VERSION_MAJOR__SHIFT) & DSI_VERSION_MAJOR__MASK;
}
