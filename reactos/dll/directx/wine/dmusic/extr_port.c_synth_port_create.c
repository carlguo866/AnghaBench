
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_21__ {int dwValidParams; int dwChannelGroups; } ;
struct TYPE_20__ {int * lpVtbl; } ;
struct TYPE_16__ {int * lpVtbl; } ;
struct TYPE_15__ {int * lpVtbl; } ;
struct TYPE_14__ {int * lpVtbl; } ;
struct TYPE_19__ {int ref; int nrofgroups; scalar_t__ pLatencyClock; scalar_t__ synth_sink; scalar_t__ synth; TYPE_7__ IDirectMusicPort_iface; TYPE_5__* group; int caps; TYPE_8__ params; int active; int * parent; TYPE_3__ IKsControl_iface; TYPE_2__ IDirectMusicThru_iface; TYPE_1__ IDirectMusicPortDownload_iface; } ;
struct TYPE_18__ {TYPE_4__* channel; } ;
struct TYPE_17__ {int priority; } ;
typedef TYPE_6__ SynthPortImpl ;
typedef int LPVOID ;
typedef TYPE_7__ IDirectMusicPort ;
typedef int IDirectMusic8Impl ;
typedef scalar_t__ HRESULT ;
typedef TYPE_8__ DMUS_PORTPARAMS ;
typedef int DMUS_PORTCAPS ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_DirectMusicSynth ;
 int CLSID_DirectMusicSynthSink ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void**) ;
 int DAUD_CHAN10_DEF_VOICE_PRIORITY ;
 int DAUD_CHAN11_DEF_VOICE_PRIORITY ;
 int DAUD_CHAN12_DEF_VOICE_PRIORITY ;
 int DAUD_CHAN13_DEF_VOICE_PRIORITY ;
 int DAUD_CHAN14_DEF_VOICE_PRIORITY ;
 int DAUD_CHAN15_DEF_VOICE_PRIORITY ;
 int DAUD_CHAN16_DEF_VOICE_PRIORITY ;
 int DAUD_CHAN1_DEF_VOICE_PRIORITY ;
 int DAUD_CHAN2_DEF_VOICE_PRIORITY ;
 int DAUD_CHAN3_DEF_VOICE_PRIORITY ;
 int DAUD_CHAN4_DEF_VOICE_PRIORITY ;
 int DAUD_CHAN5_DEF_VOICE_PRIORITY ;
 int DAUD_CHAN6_DEF_VOICE_PRIORITY ;
 int DAUD_CHAN7_DEF_VOICE_PRIORITY ;
 int DAUD_CHAN8_DEF_VOICE_PRIORITY ;
 int DAUD_CHAN9_DEF_VOICE_PRIORITY ;
 scalar_t__ DMUSIC_CreateReferenceClockImpl (int *,int *,int *) ;
 int DMUS_PORTPARAMS_CHANNELGROUPS ;
 scalar_t__ E_FAIL ;
 scalar_t__ E_OUTOFMEMORY ;
 int FALSE ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_6__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_6__*) ;
 int IDirectMusicSynthSink_Release (scalar_t__) ;
 scalar_t__ IDirectMusicSynthSink_SetMasterClock (scalar_t__,scalar_t__) ;
 scalar_t__ IDirectMusicSynth_Open (scalar_t__,TYPE_8__*) ;
 int IDirectMusicSynth_Release (scalar_t__) ;
 scalar_t__ IDirectMusicSynth_SetMasterClock (scalar_t__,scalar_t__) ;
 scalar_t__ IDirectMusicSynth_SetSynthSink (scalar_t__,scalar_t__) ;
 int IID_IDirectMusicSynth ;
 int IID_IDirectMusicSynthSink ;
 int IID_IReferenceClock ;
 int IReferenceClock_Release (scalar_t__) ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 int SynthPortImpl_DirectMusicPortDownload_Vtbl ;
 int SynthPortImpl_DirectMusicPort_Vtbl ;
 int SynthPortImpl_DirectMusicThru_Vtbl ;
 int TRACE (char*,...) ;
 int ikscontrol_vtbl ;

HRESULT synth_port_create(IDirectMusic8Impl *parent, DMUS_PORTPARAMS *port_params,
        DMUS_PORTCAPS *port_caps, IDirectMusicPort **port)
{
    SynthPortImpl *obj;
    HRESULT hr = E_FAIL;
    int i;

    TRACE("(%p, %p, %p)\n", port_params, port_caps, port);

    *port = ((void*)0);

    obj = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(SynthPortImpl));
    if (!obj)
        return E_OUTOFMEMORY;

    obj->IDirectMusicPort_iface.lpVtbl = &SynthPortImpl_DirectMusicPort_Vtbl;
    obj->IDirectMusicPortDownload_iface.lpVtbl = &SynthPortImpl_DirectMusicPortDownload_Vtbl;
    obj->IDirectMusicThru_iface.lpVtbl = &SynthPortImpl_DirectMusicThru_Vtbl;
    obj->IKsControl_iface.lpVtbl = &ikscontrol_vtbl;
    obj->ref = 1;
    obj->parent = parent;
    obj->active = FALSE;
    obj->params = *port_params;
    obj->caps = *port_caps;

    hr = DMUSIC_CreateReferenceClockImpl(&IID_IReferenceClock, (LPVOID*)&obj->pLatencyClock, ((void*)0));
    if (hr != S_OK)
    {
        HeapFree(GetProcessHeap(), 0, obj);
        return hr;
    }

    if (SUCCEEDED(hr))
        hr = CoCreateInstance(&CLSID_DirectMusicSynth, ((void*)0), CLSCTX_INPROC_SERVER, &IID_IDirectMusicSynth, (void**)&obj->synth);

    if (SUCCEEDED(hr))
        hr = CoCreateInstance(&CLSID_DirectMusicSynthSink, ((void*)0), CLSCTX_INPROC_SERVER, &IID_IDirectMusicSynthSink, (void**)&obj->synth_sink);

    if (SUCCEEDED(hr))
        hr = IDirectMusicSynth_SetMasterClock(obj->synth, obj->pLatencyClock);

    if (SUCCEEDED(hr))
        hr = IDirectMusicSynthSink_SetMasterClock(obj->synth_sink, obj->pLatencyClock);

    if (SUCCEEDED(hr))
        hr = IDirectMusicSynth_SetSynthSink(obj->synth, obj->synth_sink);

    if (SUCCEEDED(hr))
        hr = IDirectMusicSynth_Open(obj->synth, port_params);

    if (0)
    {
        if (port_params->dwValidParams & DMUS_PORTPARAMS_CHANNELGROUPS) {
            obj->nrofgroups = port_params->dwChannelGroups;

            for (i = 0; i < obj->nrofgroups; i++) {
                TRACE ("Setting default channel priorities on channel group %i\n", i + 1);
                obj->group[i].channel[0].priority = DAUD_CHAN1_DEF_VOICE_PRIORITY;
                obj->group[i].channel[1].priority = DAUD_CHAN2_DEF_VOICE_PRIORITY;
                obj->group[i].channel[2].priority = DAUD_CHAN3_DEF_VOICE_PRIORITY;
                obj->group[i].channel[3].priority = DAUD_CHAN4_DEF_VOICE_PRIORITY;
                obj->group[i].channel[4].priority = DAUD_CHAN5_DEF_VOICE_PRIORITY;
                obj->group[i].channel[5].priority = DAUD_CHAN6_DEF_VOICE_PRIORITY;
                obj->group[i].channel[6].priority = DAUD_CHAN7_DEF_VOICE_PRIORITY;
                obj->group[i].channel[7].priority = DAUD_CHAN8_DEF_VOICE_PRIORITY;
                obj->group[i].channel[8].priority = DAUD_CHAN9_DEF_VOICE_PRIORITY;
                obj->group[i].channel[9].priority = DAUD_CHAN10_DEF_VOICE_PRIORITY;
                obj->group[i].channel[10].priority = DAUD_CHAN11_DEF_VOICE_PRIORITY;
                obj->group[i].channel[11].priority = DAUD_CHAN12_DEF_VOICE_PRIORITY;
                obj->group[i].channel[12].priority = DAUD_CHAN13_DEF_VOICE_PRIORITY;
                obj->group[i].channel[13].priority = DAUD_CHAN14_DEF_VOICE_PRIORITY;
                obj->group[i].channel[14].priority = DAUD_CHAN15_DEF_VOICE_PRIORITY;
                obj->group[i].channel[15].priority = DAUD_CHAN16_DEF_VOICE_PRIORITY;
            }
        }
    }

    if (SUCCEEDED(hr)) {
        *port = &obj->IDirectMusicPort_iface;
        return S_OK;
    }

    if (obj->synth)
        IDirectMusicSynth_Release(obj->synth);
    if (obj->synth_sink)
        IDirectMusicSynthSink_Release(obj->synth_sink);
    if (obj->pLatencyClock)
        IReferenceClock_Release(obj->pLatencyClock);
    HeapFree(GetProcessHeap(), 0, obj);

    return hr;
}
