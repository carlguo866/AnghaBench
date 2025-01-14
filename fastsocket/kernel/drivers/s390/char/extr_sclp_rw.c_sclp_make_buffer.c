
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int length; int type; } ;
struct TYPE_9__ {int length; int type; int tag; int revision_code; } ;
struct TYPE_11__ {TYPE_4__ go; TYPE_3__ header; } ;
struct TYPE_8__ {int length; int type; } ;
struct TYPE_12__ {TYPE_5__ mdb; TYPE_2__ header; } ;
struct TYPE_7__ {int length; } ;
struct write_sccb {TYPE_6__ msg_buf; TYPE_1__ header; } ;
struct sclp_buffer {unsigned short columns; unsigned short htab; scalar_t__ current_length; int * current_line; scalar_t__ mto_char_sum; scalar_t__ mto_number; scalar_t__ retry_count; struct write_sccb* sccb; } ;
struct msg_buf {int dummy; } ;
struct mdb {int dummy; } ;
struct go {int dummy; } ;
typedef scalar_t__ addr_t ;


 int EVTYP_MSG ;
 scalar_t__ PAGE_SIZE ;
 int memset (struct write_sccb*,int ,int) ;

struct sclp_buffer *
sclp_make_buffer(void *page, unsigned short columns, unsigned short htab)
{
 struct sclp_buffer *buffer;
 struct write_sccb *sccb;

 sccb = (struct write_sccb *) page;




 buffer = ((struct sclp_buffer *) ((addr_t) sccb + PAGE_SIZE)) - 1;
 buffer->sccb = sccb;
 buffer->retry_count = 0;
 buffer->mto_number = 0;
 buffer->mto_char_sum = 0;
 buffer->current_line = ((void*)0);
 buffer->current_length = 0;
 buffer->columns = columns;
 buffer->htab = htab;


 memset(sccb, 0, sizeof(struct write_sccb));
 sccb->header.length = sizeof(struct write_sccb);
 sccb->msg_buf.header.length = sizeof(struct msg_buf);
 sccb->msg_buf.header.type = EVTYP_MSG;
 sccb->msg_buf.mdb.header.length = sizeof(struct mdb);
 sccb->msg_buf.mdb.header.type = 1;
 sccb->msg_buf.mdb.header.tag = 0xD4C4C240;
 sccb->msg_buf.mdb.header.revision_code = 1;
 sccb->msg_buf.mdb.go.length = sizeof(struct go);
 sccb->msg_buf.mdb.go.type = 1;

 return buffer;
}
