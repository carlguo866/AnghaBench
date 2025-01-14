
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TemplateSet {struct TemplatePacket* pkts; } ;
struct TemplatePacket {unsigned char* packet; unsigned int offset_tcp; int checksum_tcp; } ;


 int tcp_checksum (struct TemplatePacket*) ;

void
template_set_source_port(struct TemplateSet *tmplset, unsigned port)
{
    int i;

    for (i=0; i<2; i++) {
        struct TemplatePacket *tmpl = &tmplset->pkts[i];
        unsigned char *px = tmpl->packet;
        unsigned offset = tmpl->offset_tcp;

        px[offset+0] = (unsigned char)(port>>8);
        px[offset+1] = (unsigned char)(port>>0);
        tmpl->checksum_tcp = tcp_checksum(tmpl);
    }

}
