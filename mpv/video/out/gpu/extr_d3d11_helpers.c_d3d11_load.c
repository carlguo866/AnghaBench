
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFN_D3D11_CREATE_DEVICE ;
typedef scalar_t__ PFN_CREATE_DXGI_FACTORY ;
typedef int HMODULE ;


 scalar_t__ GetProcAddress (int ,char*) ;
 int LoadLibraryW (char*) ;
 scalar_t__ pCreateDXGIFactory1 ;
 scalar_t__ pD3D11CreateDevice ;

__attribute__((used)) static void d3d11_load(void)
{
    HMODULE d3d11 = LoadLibraryW(L"d3d11.dll");
    HMODULE dxgilib = LoadLibraryW(L"dxgi.dll");
    if (!d3d11 || !dxgilib)
        return;

    pD3D11CreateDevice = (PFN_D3D11_CREATE_DEVICE)
        GetProcAddress(d3d11, "D3D11CreateDevice");
    pCreateDXGIFactory1 = (PFN_CREATE_DXGI_FACTORY)
        GetProcAddress(dxgilib, "CreateDXGIFactory1");
}
