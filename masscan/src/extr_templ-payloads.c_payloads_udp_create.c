
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RangeList {int member_0; } ;
struct PayloadsUDP {int dummy; } ;
struct PayloadUDP_Default {int length; int set_cookie; int source_port; scalar_t__ buf; int port; } ;


 struct PayloadsUDP* CALLOC (int,int) ;
 struct PayloadUDP_Default* hard_coded_udp_payloads ;
 int payloads_datagram_add (struct PayloadsUDP*,unsigned char const*,unsigned int,struct RangeList*,int ,int ) ;
 int rangelist_add_range (struct RangeList*,int ,int ) ;
 int rangelist_remove_all (struct RangeList*) ;
 scalar_t__ strlen (scalar_t__) ;

struct PayloadsUDP *
payloads_udp_create(void)
{
    unsigned i;
    struct PayloadsUDP *payloads;
    struct PayloadUDP_Default *hard_coded = hard_coded_udp_payloads;

    payloads = CALLOC(1, sizeof(*payloads));




    for (i=0; hard_coded[i].length; i++) {

        struct RangeList list = {0};
        unsigned length;






        rangelist_add_range(&list, hard_coded[i].port, hard_coded[i].port);

        length = hard_coded[i].length;
        if (length == 0xFFFFFFFF)
            length = (unsigned)strlen(hard_coded[i].buf);



        payloads_datagram_add(payloads,
                    (const unsigned char*)hard_coded[i].buf,
                    length,
                    &list,
                    hard_coded[i].source_port,
                    hard_coded[i].set_cookie);

        rangelist_remove_all(&list);
    }
    return payloads;
}
