
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_10__ {TYPE_1__* rgsabound; } ;
struct TYPE_9__ {int lLbound; scalar_t__ cElements; } ;
typedef TYPE_2__ SAFEARRAY ;
typedef int HRESULT ;


 int E_INVALIDARG ;
 int E_POINTER ;
 int S_OK ;
 int SafeArrayAllocData (TYPE_2__*) ;
 int SafeArrayAllocDescriptor (int,TYPE_2__**) ;
 int SafeArrayDestroy (TYPE_2__*) ;
 int SafeArrayDestroyDescriptor (TYPE_2__*) ;
 int SafeArrayGetDim (TYPE_2__*) ;
 int VT_UI1 ;
 int ok (int,char*,int,...) ;
 int pSafeArrayAllocDescriptorEx (int,int,TYPE_2__**) ;

__attribute__((used)) static void test_SafeArrayAllocDestroyDescriptor(void)
{
  SAFEARRAY *sa;
  HRESULT hres;
  UINT i;


  hres = SafeArrayAllocDescriptor(0, &sa);
  ok(hres == E_INVALIDARG, "0 dimensions gave hres 0x%x\n", hres);

  hres = SafeArrayAllocDescriptor(65536, &sa);
  ok(hres == E_INVALIDARG, "65536 dimensions gave hres 0x%x\n", hres);

  if (0)
  {

  hres=SafeArrayAllocDescriptor(1, ((void*)0));
  ok(hres == E_POINTER,"NULL parm gave hres 0x%x\n", hres);
  }


  for (i = 5; i <= 65535; i += 30)
  {
    hres = SafeArrayAllocDescriptor(i, &sa);
    ok(hres == S_OK, "%d dimensions failed; hres 0x%x\n", i, hres);

    if (hres == S_OK)
    {
      ok(SafeArrayGetDim(sa) == i, "Dimension is %d; should be %d\n",
         SafeArrayGetDim(sa), i);

      hres = SafeArrayDestroyDescriptor(sa);
      ok(hres == S_OK, "destroy failed; hres 0x%x\n", hres);
    }
  }

  if (!pSafeArrayAllocDescriptorEx)
    return;

  hres = pSafeArrayAllocDescriptorEx(VT_UI1, 0, &sa);
  ok(hres == E_INVALIDARG, "0 dimensions gave hres 0x%x\n", hres);

  hres = pSafeArrayAllocDescriptorEx(VT_UI1, 65536, &sa);
  ok(hres == E_INVALIDARG, "65536 dimensions gave hres 0x%x\n", hres);

  hres = pSafeArrayAllocDescriptorEx(VT_UI1, 1, ((void*)0));
  ok(hres == E_POINTER,"NULL parm gave hres 0x%x\n", hres);

  hres = pSafeArrayAllocDescriptorEx(-1, 1, &sa);
  ok(hres == S_OK, "VT = -1 gave hres 0x%x\n", hres);

  sa->rgsabound[0].cElements = 0;
  sa->rgsabound[0].lLbound = 1;

  hres = SafeArrayAllocData(sa);
  ok(hres == S_OK, "SafeArrayAllocData gave hres 0x%x\n", hres);

  hres = SafeArrayDestroy(sa);
  ok(hres == S_OK,"SafeArrayDestroy failed with hres %x\n",hres);
}
