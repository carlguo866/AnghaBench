
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t FSE_COMPRESSBOUND (size_t) ;

size_t FSE_compressBound(size_t size) { return FSE_COMPRESSBOUND(size); }
