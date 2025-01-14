
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_context_stream {struct pvr2_channel* user; } ;
struct pvr2_channel {int mc_head; struct pvr2_context_stream* stream; } ;


 int EBUSY ;
 int pvr2_channel_disclaim_stream (struct pvr2_channel*) ;
 int pvr2_context_enter (int ) ;
 int pvr2_context_exit (int ) ;

int pvr2_channel_claim_stream(struct pvr2_channel *cp,
         struct pvr2_context_stream *sp)
{
 int code = 0;
 pvr2_context_enter(cp->mc_head); do {
  if (sp == cp->stream) break;
  if (sp && sp->user) {
   code = -EBUSY;
   break;
  }
  pvr2_channel_disclaim_stream(cp);
  if (!sp) break;
  sp->user = cp;
  cp->stream = sp;
 } while (0); pvr2_context_exit(cp->mc_head);
 return code;
}
