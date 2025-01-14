
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_14__ ;


struct nvenc_data {int session; int cy; int cx; TYPE_6__* device; } ;
struct nv_texture {TYPE_5__* tex; int res; } ;
struct TYPE_16__ {int Count; } ;
struct TYPE_22__ {int MipLevels; int ArraySize; int BindFlags; TYPE_1__ SampleDesc; int Format; int Height; int Width; int member_0; } ;
struct TYPE_21__ {TYPE_2__* lpVtbl; } ;
struct TYPE_20__ {TYPE_3__* lpVtbl; } ;
struct TYPE_19__ {int registeredResource; int bufferFormat; int height; int width; TYPE_5__* resourceToRegister; int resourceType; int member_0; } ;
struct TYPE_18__ {int (* Release ) (TYPE_5__*) ;int (* SetEvictionPriority ) (TYPE_5__*,int ) ;} ;
struct TYPE_17__ {int (* CreateTexture2D ) (TYPE_6__*,TYPE_7__*,int *,TYPE_5__**) ;} ;
struct TYPE_15__ {int (* nvEncRegisterResource ) (int ,TYPE_4__*) ;} ;
typedef TYPE_4__ NV_ENC_REGISTER_RESOURCE ;
typedef TYPE_5__ ID3D11Texture2D ;
typedef TYPE_6__ ID3D11Device ;
typedef int HRESULT ;
typedef TYPE_7__ D3D11_TEXTURE2D_DESC ;


 int D3D11_BIND_RENDER_TARGET ;
 int DXGI_FORMAT_NV12 ;
 int DXGI_RESOURCE_PRIORITY_MAXIMUM ;
 scalar_t__ FAILED (int ) ;
 int NV_ENC_BUFFER_FORMAT_NV12 ;
 int NV_ENC_INPUT_RESOURCE_TYPE_DIRECTX ;
 int NV_ENC_REGISTER_RESOURCE_VER ;
 scalar_t__ NV_FAILED (int ) ;
 int error_hr (char*) ;
 TYPE_14__ nv ;
 int stub1 (TYPE_6__*,TYPE_7__*,int *,TYPE_5__**) ;
 int stub2 (TYPE_5__*,int ) ;
 int stub3 (int ,TYPE_4__*) ;
 int stub4 (TYPE_5__*) ;

__attribute__((used)) static bool nv_texture_init(struct nvenc_data *enc, struct nv_texture *nvtex)
{
 ID3D11Device *device = enc->device;
 ID3D11Texture2D *tex;
 HRESULT hr;

 D3D11_TEXTURE2D_DESC desc = {0};
 desc.Width = enc->cx;
 desc.Height = enc->cy;
 desc.MipLevels = 1;
 desc.ArraySize = 1;
 desc.Format = DXGI_FORMAT_NV12;
 desc.SampleDesc.Count = 1;
 desc.BindFlags = D3D11_BIND_RENDER_TARGET;

 hr = device->lpVtbl->CreateTexture2D(device, &desc, ((void*)0), &tex);
 if (FAILED(hr)) {
  error_hr("Failed to create texture");
  return 0;
 }

 tex->lpVtbl->SetEvictionPriority(tex, DXGI_RESOURCE_PRIORITY_MAXIMUM);

 NV_ENC_REGISTER_RESOURCE res = {NV_ENC_REGISTER_RESOURCE_VER};
 res.resourceType = NV_ENC_INPUT_RESOURCE_TYPE_DIRECTX;
 res.resourceToRegister = tex;
 res.width = enc->cx;
 res.height = enc->cy;
 res.bufferFormat = NV_ENC_BUFFER_FORMAT_NV12;

 if (NV_FAILED(nv.nvEncRegisterResource(enc->session, &res))) {
  tex->lpVtbl->Release(tex);
  return 0;
 }

 nvtex->res = res.registeredResource;
 nvtex->tex = tex;
 return 1;
}
