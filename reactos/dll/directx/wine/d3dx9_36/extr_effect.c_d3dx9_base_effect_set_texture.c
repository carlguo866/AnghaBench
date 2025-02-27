
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_parameter {scalar_t__ type; scalar_t__ data; int element_count; } ;
struct d3dx9_base_effect {int dummy; } ;
struct IDirect3DBaseTexture9 {int dummy; } ;
typedef int HRESULT ;
typedef int D3DXHANDLE ;


 int D3DERR_INVALIDCALL ;
 scalar_t__ D3DXPT_TEXTURE ;
 scalar_t__ D3DXPT_TEXTURE1D ;
 scalar_t__ D3DXPT_TEXTURE2D ;
 scalar_t__ D3DXPT_TEXTURE3D ;
 scalar_t__ D3DXPT_TEXTURECUBE ;
 int D3D_OK ;
 int IDirect3DBaseTexture9_AddRef (struct IDirect3DBaseTexture9*) ;
 int IDirect3DBaseTexture9_Release (struct IDirect3DBaseTexture9*) ;
 int WARN (char*) ;
 struct d3dx_parameter* get_valid_parameter (struct d3dx9_base_effect*,int ) ;
 int set_dirty (struct d3dx_parameter*) ;

__attribute__((used)) static HRESULT d3dx9_base_effect_set_texture(struct d3dx9_base_effect *base,
        D3DXHANDLE parameter, struct IDirect3DBaseTexture9 *texture)
{
    struct d3dx_parameter *param = get_valid_parameter(base, parameter);

    if (param && !param->element_count &&
            (param->type == D3DXPT_TEXTURE || param->type == D3DXPT_TEXTURE1D
            || param->type == D3DXPT_TEXTURE2D || param->type == D3DXPT_TEXTURE3D
            || param->type == D3DXPT_TEXTURECUBE))
    {
        struct IDirect3DBaseTexture9 *oltexture = *(struct IDirect3DBaseTexture9 **)param->data;

        if (texture == oltexture)
            return D3D_OK;

        if (texture) IDirect3DBaseTexture9_AddRef(texture);
        if (oltexture) IDirect3DBaseTexture9_Release(oltexture);

        *(struct IDirect3DBaseTexture9 **)param->data = texture;
        set_dirty(param);

        return D3D_OK;
    }

    WARN("Parameter not found.\n");

    return D3DERR_INVALIDCALL;
}
