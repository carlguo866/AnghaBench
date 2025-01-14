
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int blk_write_time; int blk_read_time; scalar_t__ temp_blks_written; scalar_t__ temp_blks_read; scalar_t__ local_blks_written; scalar_t__ local_blks_dirtied; scalar_t__ local_blks_read; scalar_t__ local_blks_hit; scalar_t__ shared_blks_written; scalar_t__ shared_blks_dirtied; scalar_t__ shared_blks_read; scalar_t__ shared_blks_hit; } ;
typedef TYPE_1__ BufferUsage ;


 int INSTR_TIME_ACCUM_DIFF (int ,int ,int ) ;

__attribute__((used)) static void
BufferUsageAccumDiff(BufferUsage *dst,
      const BufferUsage *add,
      const BufferUsage *sub)
{
 dst->shared_blks_hit += add->shared_blks_hit - sub->shared_blks_hit;
 dst->shared_blks_read += add->shared_blks_read - sub->shared_blks_read;
 dst->shared_blks_dirtied += add->shared_blks_dirtied - sub->shared_blks_dirtied;
 dst->shared_blks_written += add->shared_blks_written - sub->shared_blks_written;
 dst->local_blks_hit += add->local_blks_hit - sub->local_blks_hit;
 dst->local_blks_read += add->local_blks_read - sub->local_blks_read;
 dst->local_blks_dirtied += add->local_blks_dirtied - sub->local_blks_dirtied;
 dst->local_blks_written += add->local_blks_written - sub->local_blks_written;
 dst->temp_blks_read += add->temp_blks_read - sub->temp_blks_read;
 dst->temp_blks_written += add->temp_blks_written - sub->temp_blks_written;
 INSTR_TIME_ACCUM_DIFF(dst->blk_read_time,
        add->blk_read_time, sub->blk_read_time);
 INSTR_TIME_ACCUM_DIFF(dst->blk_write_time,
        add->blk_write_time, sub->blk_write_time);
}
