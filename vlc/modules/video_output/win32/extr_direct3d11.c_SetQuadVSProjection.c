
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_10__ ;


struct TYPE_23__ {TYPE_6__* sys; } ;
typedef TYPE_5__ vout_display_t ;
struct TYPE_22__ {int d3dcontext; } ;
struct TYPE_19__ {float height; scalar_t__ width; } ;
struct TYPE_20__ {TYPE_1__ display; } ;
struct TYPE_21__ {TYPE_2__ vdcfg; } ;
struct TYPE_24__ {TYPE_4__ d3d_dev; TYPE_3__ area; } ;
typedef TYPE_6__ vout_display_sys_t ;
struct TYPE_25__ {float fov; } ;
typedef TYPE_7__ vlc_viewpoint_t ;
struct TYPE_26__ {scalar_t__ pVertexShaderConstants; } ;
typedef TYPE_8__ d3d_quad_t ;
struct TYPE_27__ {int View; int Projection; int Zoom; } ;
typedef TYPE_9__ VS_PROJECTION_CONST ;
struct TYPE_18__ {TYPE_9__* pData; } ;
typedef int ID3D11Resource ;
typedef int HRESULT ;
typedef TYPE_10__ D3D11_MAPPED_SUBRESOURCE ;


 int D3D11_MAP_WRITE_DISCARD ;
 int FIELD_OF_VIEW_DEGREES_MAX ;
 int ID3D11DeviceContext_Map (int ,int *,int ,int ,int ,TYPE_10__*) ;
 int ID3D11DeviceContext_Unmap (int ,int *,int ) ;
 int M_PI ;
 float SPHERE_RADIUS ;
 scalar_t__ SUCCEEDED (int ) ;
 float UpdateFOVy (float,float) ;
 float UpdateZ (float,float) ;
 int getProjectionMatrix (float,float,int ) ;
 int getZoomMatrix (float,int ) ;
 int vlc_viewpoint_reverse (TYPE_7__*,TYPE_7__ const*) ;
 int vlc_viewpoint_to_4x4 (TYPE_7__*,int ) ;

__attribute__((used)) static void SetQuadVSProjection(vout_display_t *vd, d3d_quad_t *quad, const vlc_viewpoint_t *p_vp)
{
    vout_display_sys_t *sys = vd->sys;
    if (!quad->pVertexShaderConstants)
        return;


    float f_fovx = p_vp->fov * (float)M_PI / 180.f;
    if ( f_fovx > FIELD_OF_VIEW_DEGREES_MAX * M_PI / 180 + 0.001f ||
         f_fovx < -0.001f )
        return;

    float f_sar = (float) sys->area.vdcfg.display.width / sys->area.vdcfg.display.height;
    float f_fovy = UpdateFOVy(f_fovx, f_sar);
    float f_z = UpdateZ(f_fovx, f_fovy);

    HRESULT hr;
    D3D11_MAPPED_SUBRESOURCE mapped;
    hr = ID3D11DeviceContext_Map(sys->d3d_dev.d3dcontext, (ID3D11Resource *)quad->pVertexShaderConstants, 0, D3D11_MAP_WRITE_DISCARD, 0, &mapped);
    if (SUCCEEDED(hr)) {
        VS_PROJECTION_CONST *dst_data = mapped.pData;
        getZoomMatrix(SPHERE_RADIUS * f_z, dst_data->Zoom);
        getProjectionMatrix(f_sar, f_fovy, dst_data->Projection);

        vlc_viewpoint_t vp;
        vlc_viewpoint_reverse(&vp, p_vp);
        vlc_viewpoint_to_4x4(&vp, dst_data->View);
    }
    ID3D11DeviceContext_Unmap(sys->d3d_dev.d3dcontext, (ID3D11Resource *)quad->pVertexShaderConstants, 0);
}
