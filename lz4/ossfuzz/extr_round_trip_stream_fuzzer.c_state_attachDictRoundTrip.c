
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* buf; } ;
struct TYPE_7__ {int dstream; int cstream; TYPE_1__ data; } ;
typedef TYPE_2__ state_t ;
typedef int LZ4_stream_t ;


 int LZ4_attach_dictionary (int ,int *) ;
 int * LZ4_createStream () ;
 int LZ4_freeStream (int *) ;
 int LZ4_loadDict (int *,char const*,size_t const) ;
 int LZ4_setStreamDecode (int ,char const*,size_t const) ;
 int state_extDictRoundTrip ;
 int state_prefixRoundTrip ;
 int state_randomRoundTrip (TYPE_2__*,int ,int ) ;
 size_t state_trimDict (TYPE_2__*) ;

__attribute__((used)) static void state_attachDictRoundTrip(state_t* state)
{
    char const* dict = state->data.buf;
    size_t const dictSize = state_trimDict(state);
    LZ4_stream_t* dictStream = LZ4_createStream();
    LZ4_loadDict(dictStream, dict, dictSize);
    LZ4_attach_dictionary(state->cstream, dictStream);
    LZ4_setStreamDecode(state->dstream, dict, dictSize);
    state_randomRoundTrip(state, state_prefixRoundTrip, state_extDictRoundTrip);
    LZ4_freeStream(dictStream);
}
