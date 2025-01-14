
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint16_t ;
struct TYPE_2__ {void* tlen; void* cpart; void* ssrc; void* timestamp; void* sequnum; } ;
struct RTPMessage {TYPE_1__ header; int len; } ;
struct RTPHeader {int dummy; } ;


 int assert (int) ;
 struct RTPMessage* calloc (size_t,int) ;
 int memcpy (TYPE_1__*,int const*,size_t) ;
 void* ntohl (void*) ;
 void* ntohs (void*) ;

struct RTPMessage *new_message (size_t allocate_len, const uint8_t *data, uint16_t data_length)
{
    assert(allocate_len >= data_length);

    struct RTPMessage *msg = calloc(sizeof(struct RTPMessage) + (allocate_len - sizeof(struct RTPHeader)), 1);

    msg->len = data_length - sizeof(struct RTPHeader);
    memcpy(&msg->header, data, data_length);

    msg->header.sequnum = ntohs(msg->header.sequnum);
    msg->header.timestamp = ntohl(msg->header.timestamp);
    msg->header.ssrc = ntohl(msg->header.ssrc);

    msg->header.cpart = ntohs(msg->header.cpart);
    msg->header.tlen = ntohs(msg->header.tlen);

    return msg;
}
