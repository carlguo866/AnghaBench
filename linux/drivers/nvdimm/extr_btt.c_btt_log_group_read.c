
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct log_group {int dummy; } ;
struct arena_info {scalar_t__ logoff; } ;


 int LOG_GRP_SIZE ;
 int arena_read_bytes (struct arena_info*,scalar_t__,struct log_group*,int,int ) ;

__attribute__((used)) static int btt_log_group_read(struct arena_info *arena, u32 lane,
   struct log_group *log)
{
 return arena_read_bytes(arena,
   arena->logoff + (lane * LOG_GRP_SIZE), log,
   LOG_GRP_SIZE, 0);
}
