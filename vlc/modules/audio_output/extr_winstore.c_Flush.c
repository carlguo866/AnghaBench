
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_6__ {int stream; int * client; } ;
typedef TYPE_2__ aout_sys_t ;
typedef int HRESULT ;


 int EnterMTA () ;
 int LeaveMTA () ;
 int aout_stream_Flush (int ) ;
 scalar_t__ unlikely (int ) ;
 int vlc_FromHR (TYPE_1__*,int ) ;

__attribute__((used)) static void Flush(audio_output_t *aout)
{
    aout_sys_t *sys = aout->sys;
    if( unlikely( sys->client == ((void*)0) ) )
        return;

    EnterMTA();
    HRESULT hr = aout_stream_Flush(sys->stream);
    LeaveMTA();

    vlc_FromHR(aout, hr);
}
