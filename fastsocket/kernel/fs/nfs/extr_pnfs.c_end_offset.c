
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 scalar_t__ NFS4_MAX_UINT64 ;

__attribute__((used)) static inline u64
end_offset(u64 start, u64 len)
{
 u64 end;

 end = start + len;
 return end >= start ? end : NFS4_MAX_UINT64;
}
