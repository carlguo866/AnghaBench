
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_encoder {int dummy; } ;
struct pt_query_decoder {int dummy; } ;
struct ptu_decoder_fixture {struct pt_encoder encoder; struct pt_query_decoder decoder; } ;
struct pt_event {int dummy; } ;
typedef int event ;


 int pt_encode_fup (struct pt_encoder*,int ,int ) ;
 int pt_ipc_suppressed ;
 int pt_qry_event (struct pt_query_decoder*,struct pt_event*,int) ;
 int pte_ip_suppressed ;
 int ptu_check (int ,struct pt_query_decoder*) ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_sync_decoder ;

__attribute__((used)) static struct ptunit_result
event_async_branch_suppressed_fail(struct ptu_decoder_fixture *dfix)
{
 struct pt_query_decoder *decoder = &dfix->decoder;
 struct pt_encoder *encoder = &dfix->encoder;
 struct pt_event event;
 int errcode;

 pt_encode_fup(encoder, 0, pt_ipc_suppressed);

 ptu_check(ptu_sync_decoder, decoder);

 errcode = pt_qry_event(decoder, &event, sizeof(event));
 ptu_int_eq(errcode, -pte_ip_suppressed);

 return ptu_passed();
}
