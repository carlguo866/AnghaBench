
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int left; int right; int top; int bottom; } ;
struct TYPE_14__ {int uDockType; TYPE_3__ rcTbPos; } ;
struct TYPE_12__ {int left; int right; int top; int bottom; } ;
struct TYPE_11__ {int left; int right; int top; int bottom; } ;
struct TYPE_15__ {scalar_t__ cbSize; TYPE_4__ hltbinfo; TYPE_2__ rcDocPos; TYPE_1__ rcFramePos; int grfHLBWIF; } ;
typedef int IHlinkBrowseContext ;
typedef scalar_t__ HRESULT ;
typedef TYPE_5__ HLBWINFO ;


 scalar_t__ E_INVALIDARG ;
 int HLBWIF_WEBTOOLBARHIDDEN ;
 scalar_t__ HlinkCreateBrowseContext (int *,int *,void**) ;
 scalar_t__ IHlinkBrowseContext_GetBrowseWindowInfo (int *,TYPE_5__*) ;
 int IHlinkBrowseContext_Release (int *) ;
 scalar_t__ IHlinkBrowseContext_SetBrowseWindowInfo (int *,TYPE_5__*) ;
 int IID_IHlinkBrowseContext ;
 scalar_t__ S_OK ;
 int memcmp (TYPE_5__*,TYPE_5__*,int) ;
 int memset (TYPE_5__*,int,int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_BrowseWindowInfo(void)
{
    IHlinkBrowseContext *bc;
    HLBWINFO bwinfo_set, bwinfo_get;
    HRESULT hres;

    hres = HlinkCreateBrowseContext(((void*)0), &IID_IHlinkBrowseContext, (void**)&bc);
    ok(hres == S_OK, "HlinkCreateBrowseContext failed: 0x%08x\n", hres);

    hres = IHlinkBrowseContext_GetBrowseWindowInfo(bc, ((void*)0));
    ok(hres == E_INVALIDARG, "GetBrowseWindow failed with wrong code: 0x%08x\n", hres);

    hres = IHlinkBrowseContext_SetBrowseWindowInfo(bc, ((void*)0));
    ok(hres == E_INVALIDARG, "SetBrowseWindow failed with wrong code: 0x%08x\n", hres);

    memset(&bwinfo_get, -1, sizeof(HLBWINFO));

    hres = IHlinkBrowseContext_GetBrowseWindowInfo(bc, &bwinfo_get);
    ok(hres == S_OK, "GetBrowseWindowInfo failed: 0x%08x\n", hres);
    ok(bwinfo_get.cbSize == 0, "Got wrong size: %x\n", bwinfo_get.cbSize);

    bwinfo_set.cbSize = sizeof(HLBWINFO);
    bwinfo_set.grfHLBWIF = HLBWIF_WEBTOOLBARHIDDEN;
    bwinfo_set.rcFramePos.left = 1;
    bwinfo_set.rcFramePos.right = 2;
    bwinfo_set.rcFramePos.top = 3;
    bwinfo_set.rcFramePos.bottom = 4;
    bwinfo_set.rcDocPos.left = 5;
    bwinfo_set.rcDocPos.right = 6;
    bwinfo_set.rcDocPos.top = 7;
    bwinfo_set.rcDocPos.bottom = 8;
    bwinfo_set.hltbinfo.uDockType = 4321;
    bwinfo_set.hltbinfo.rcTbPos.left = 9;
    bwinfo_set.hltbinfo.rcTbPos.right = 10;
    bwinfo_set.hltbinfo.rcTbPos.top = 11;
    bwinfo_set.hltbinfo.rcTbPos.bottom = 12;
    hres = IHlinkBrowseContext_SetBrowseWindowInfo(bc, &bwinfo_set);
    ok(hres == S_OK, "SetBrowseWindowInfo failed: 0x%08x\n", hres);

    memset(&bwinfo_get, 0, sizeof(HLBWINFO));

    hres = IHlinkBrowseContext_GetBrowseWindowInfo(bc, &bwinfo_get);
    ok(hres == S_OK, "GetBrowseWindowInfo failed: 0x%08x\n", hres);
    ok(!memcmp(&bwinfo_set, &bwinfo_get, sizeof(HLBWINFO)), "Set and Get differ\n");

    IHlinkBrowseContext_Release(bc);
}
