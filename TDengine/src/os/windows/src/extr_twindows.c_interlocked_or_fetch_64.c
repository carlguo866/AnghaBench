
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __int64 ;


 int _InterlockedOr64 (int volatile*,int) ;

__int64 interlocked_or_fetch_64(__int64 volatile* ptr, __int64 val) {
  return _InterlockedOr64(ptr, val) & val;
}
