
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPGUID ;
typedef int * LPDIRECTSOUND ;
typedef scalar_t__ HRESULT ;


 scalar_t__ DSERR_ALLOCATED ;
 scalar_t__ DSERR_GENERIC ;
 scalar_t__ DSERR_NODRIVER ;
 scalar_t__ DS_OK ;
 scalar_t__ E_FAIL ;
 int IDirectSound_Release (int *) ;
 int ok (int,char*,int) ;
 scalar_t__ pDirectSoundCreate (int ,int **,int *) ;

__attribute__((used)) static HRESULT test_for_driver(LPGUID lpGuid)
{
    HRESULT rc;
    LPDIRECTSOUND dso=((void*)0);
    int ref;


    rc=pDirectSoundCreate(lpGuid,&dso,((void*)0));
    ok(rc==DS_OK||rc==DSERR_NODRIVER||rc==DSERR_ALLOCATED||rc==E_FAIL,
       "DirectSoundCreate() failed: %08x\n",rc);
    if (rc!=DS_OK)
        return rc;

    ref=IDirectSound_Release(dso);
    ok(ref==0,"IDirectSound_Release() has %d references, should have 0\n",ref);
    if (ref!=0)
        return DSERR_GENERIC;

    return rc;
}
