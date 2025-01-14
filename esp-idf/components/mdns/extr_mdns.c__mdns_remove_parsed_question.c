
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
typedef int mdns_srv_item_t ;
struct TYPE_6__ {struct TYPE_6__* next; struct TYPE_6__* domain; struct TYPE_6__* proto; struct TYPE_6__* service; struct TYPE_6__* host; } ;
typedef TYPE_1__ mdns_parsed_question_t ;
struct TYPE_7__ {TYPE_1__* questions; } ;
typedef TYPE_2__ mdns_parsed_packet_t ;


 scalar_t__ _mdns_question_matches (TYPE_1__*,int ,int *) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void _mdns_remove_parsed_question(mdns_parsed_packet_t * parsed_packet, uint16_t type, mdns_srv_item_t * service)
{
    mdns_parsed_question_t * q = parsed_packet->questions;

    if (_mdns_question_matches(q, type, service)) {
        parsed_packet->questions = q->next;
        free(q->host);
        free(q->service);
        free(q->proto);
        free(q->domain);
        free(q);
        return;
    }

    while (q->next) {
        mdns_parsed_question_t * p = q->next;
        if (_mdns_question_matches(p, type, service)) {
            q->next = p->next;
            free(p->host);
            free(p->service);
            free(p->proto);
            free(p->domain);
            free(p);
            return;
        }
        q = q->next;
    }
}
