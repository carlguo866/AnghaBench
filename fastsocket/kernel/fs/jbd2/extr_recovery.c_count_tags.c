
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct buffer_head {char* b_data; } ;
struct TYPE_5__ {int j_blocksize; } ;
typedef TYPE_1__ journal_t ;
typedef int journal_header_t ;
struct TYPE_6__ {int t_flags; } ;
typedef TYPE_2__ journal_block_tag_t ;


 int JBD2_FLAG_LAST_TAG ;
 int JBD2_FLAG_SAME_UUID ;
 int cpu_to_be32 (int ) ;
 int journal_tag_bytes (TYPE_1__*) ;

__attribute__((used)) static int count_tags(journal_t *journal, struct buffer_head *bh)
{
 char * tagp;
 journal_block_tag_t * tag;
 int nr = 0, size = journal->j_blocksize;
 int tag_bytes = journal_tag_bytes(journal);

 tagp = &bh->b_data[sizeof(journal_header_t)];

 while ((tagp - bh->b_data + tag_bytes) <= size) {
  tag = (journal_block_tag_t *) tagp;

  nr++;
  tagp += tag_bytes;
  if (!(tag->t_flags & cpu_to_be32(JBD2_FLAG_SAME_UUID)))
   tagp += 16;

  if (tag->t_flags & cpu_to_be32(JBD2_FLAG_LAST_TAG))
   break;
 }

 return nr;
}
