
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {int i_bits_per_pixel; int i_height; int i_width; int i_visible_height; int i_visible_width; int i_chroma; } ;
typedef TYPE_2__ video_format_t ;
struct TYPE_16__ {TYPE_1__* p; } ;
typedef TYPE_3__ picture_t ;
typedef int guint8 ;
typedef int filter_t ;
typedef int cairo_t ;
typedef int cairo_surface_t ;
struct TYPE_18__ {int message; } ;
struct TYPE_17__ {int height; int width; } ;
struct TYPE_14__ {int i_pitch; int i_lines; int p_pixels; } ;
typedef int RsvgHandle ;
typedef TYPE_4__ RsvgDimensionData ;
typedef TYPE_5__ GError ;


 int CAIRO_FORMAT_ARGB32 ;
 int G_OBJECT (int *) ;
 int VLC_CODEC_BGRA ;
 int * cairo_create (int *) ;
 int cairo_destroy (int *) ;
 int * cairo_image_surface_create_for_data (int ,int ,int ,int ,int) ;
 int cairo_surface_destroy (int *) ;
 int g_object_unref (int ) ;
 int memset (int ,int,int) ;
 int msg_Err (int *,char*,...) ;
 TYPE_3__* picture_NewFromFormat (TYPE_2__*) ;
 int picture_Release (TYPE_3__*) ;
 int rsvg_handle_get_dimensions (int *,TYPE_4__*) ;
 int * rsvg_handle_new_from_data (int const*,int ,TYPE_5__**) ;
 int rsvg_handle_render_cairo (int *,int *) ;
 int strlen (char const*) ;
 int svg_RescaletoFit (int *,int *,int *,float*) ;
 int video_format_Clean (TYPE_2__*) ;
 int video_format_Init (TYPE_2__*,int ) ;

__attribute__((used)) static picture_t * svg_RenderPicture( filter_t *p_filter,
                                      const char *psz_svgdata )
{
    RsvgHandle *p_handle;
    GError *error = ((void*)0);

    p_handle = rsvg_handle_new_from_data( (const guint8 *)psz_svgdata,
                                          strlen( psz_svgdata ), &error );
    if( !p_handle )
    {
        msg_Err( p_filter, "error while rendering SVG: %s", error->message );
        return ((void*)0);
    }

    RsvgDimensionData dim;
    rsvg_handle_get_dimensions( p_handle, &dim );
    float scale;
    svg_RescaletoFit( p_filter, &dim.width, &dim.height, &scale );


    video_format_t fmt;
    video_format_Init( &fmt, VLC_CODEC_BGRA );
    fmt.i_bits_per_pixel = 32;
    fmt.i_chroma = VLC_CODEC_BGRA;
    fmt.i_width = fmt.i_visible_width = dim.width;
    fmt.i_height = fmt.i_visible_height = dim.height;

    picture_t *p_picture = picture_NewFromFormat( &fmt );
    if( !p_picture )
    {
        video_format_Clean( &fmt );
        g_object_unref( G_OBJECT( p_handle ) );
        return ((void*)0);
    }
    memset( p_picture->p[0].p_pixels, 0x00, p_picture->p[0].i_pitch * p_picture->p[0].i_lines );

    cairo_surface_t* surface = cairo_image_surface_create_for_data( p_picture->p->p_pixels,
                                                                    CAIRO_FORMAT_ARGB32,
                                                                    fmt.i_width, fmt.i_height,
                                                                    p_picture->p[0].i_pitch );
    if( !surface )
    {
        g_object_unref( G_OBJECT( p_handle ) );
        picture_Release( p_picture );
        return ((void*)0);
    }

    cairo_t *cr = cairo_create( surface );
    if( !cr )
    {
        msg_Err( p_filter, "error while creating cairo surface" );
        cairo_surface_destroy( surface );
        g_object_unref( G_OBJECT( p_handle ) );
        picture_Release( p_picture );
        return ((void*)0);
    }

    if( ! rsvg_handle_render_cairo( p_handle, cr ) )
    {
        msg_Err( p_filter, "error while rendering SVG" );
        cairo_destroy( cr );
        cairo_surface_destroy( surface );
        g_object_unref( G_OBJECT( p_handle ) );
        picture_Release( p_picture );
        return ((void*)0);
    }

    cairo_destroy( cr );
    cairo_surface_destroy( surface );
    g_object_unref( G_OBJECT( p_handle ) );

    return p_picture;
}
