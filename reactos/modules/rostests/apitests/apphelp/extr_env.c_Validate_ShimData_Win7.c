
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {scalar_t__* atrLayers; int dwLayerCount; } ;
struct TYPE_4__ {scalar_t__ dwMagic; int dwSize; int unknown; TYPE_1__ Query; int * szModule; } ;
typedef TYPE_2__ ShimData_Win7 ;
typedef scalar_t__ PVOID ;


 int GetEnvironmentVariableA (char*,char*,int ) ;
 size_t SDB_MAX_LAYERS ;
 scalar_t__ SHIMDATA_MAGIC ;
 int ValidateShim (scalar_t__,char const*) ;
 int _countof (char*) ;
 int lstrcmpW (int *,int *) ;
 int min (size_t,size_t) ;
 int ok (int,char*,int,...) ;
 int trace (char*,char*) ;
 int wine_dbgstr_w (int *) ;

__attribute__((used)) static void Validate_ShimData_Win7(PVOID data, WCHAR szApphelp[256], size_t count, const char* layers[])
{
    size_t n;
    ShimData_Win7* pShimData = (ShimData_Win7*)data;

    ok(!lstrcmpW(pShimData->szModule, szApphelp), "Expected pShimData->Module to be %s, was %s\n",
        wine_dbgstr_w(szApphelp), wine_dbgstr_w(pShimData->szModule));
    ok(pShimData->dwMagic == SHIMDATA_MAGIC, "Expected pShimData->dwMagic to be 0x%x, was 0x%x\n",
        SHIMDATA_MAGIC, pShimData->dwMagic);
    ok(pShimData->dwSize == sizeof(ShimData_Win7), "Expected pShimData->dwSize to be %u, was %u\n",
        sizeof(ShimData_Win7), pShimData->dwSize);
    if (pShimData->Query.dwLayerCount != min(count, SDB_MAX_LAYERS))
    {
        char buf[250] = {0};
        GetEnvironmentVariableA("__COMPAT_LAYER", buf, _countof(buf));
        trace("At test: %s\n", buf);
    }
    ok(pShimData->Query.dwLayerCount == min(count, SDB_MAX_LAYERS),
        "Expected LayerCount to be %u, was %u\n", min(count, SDB_MAX_LAYERS), pShimData->Query.dwLayerCount);
    for (n = 0; n < SDB_MAX_LAYERS; ++n)
    {
        if (n < count)
        {
            ok(pShimData->Query.atrLayers[n] != 0, "Expected to find a valid layer in index %u / %u\n", n, count);
            ValidateShim(pShimData->Query.atrLayers[n], layers[n]);
        }
        else
            ok(pShimData->Query.atrLayers[n] == 0, "Expected to find an empty layer in index %u / %u\n", n, count);
    }
    ok(pShimData->unknown == 0x14c, "Expected pShimData->unknown to be 0x14c, was 0x%x\n", pShimData->unknown);
}
