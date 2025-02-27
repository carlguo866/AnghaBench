
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct resource {scalar_t__ end; scalar_t__ start; } ;


 int CHECK_CHUNKSIZE ;
 int S3C_PMDBG (char*,unsigned long,unsigned long,int) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static u32 *s3c_pm_countram(struct resource *res, u32 *val)
{
 u32 size = (u32)resource_size(res);

 size += CHECK_CHUNKSIZE-1;
 size /= CHECK_CHUNKSIZE;

 S3C_PMDBG("Area %08lx..%08lx, %d blocks\n",
    (unsigned long)res->start, (unsigned long)res->end, size);

 *val += size * sizeof(u32);
 return val;
}
