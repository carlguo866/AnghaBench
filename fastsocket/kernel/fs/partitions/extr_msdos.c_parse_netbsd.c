
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parsed_partitions {int dummy; } ;
struct block_device {int dummy; } ;
typedef int sector_t ;


 int BSD_MAXPARTITIONS ;
 int parse_bsd (struct parsed_partitions*,struct block_device*,int ,int ,int,char*,int ) ;

__attribute__((used)) static void
parse_netbsd(struct parsed_partitions *state, struct block_device *bdev,
  sector_t offset, sector_t size, int origin)
{




}
