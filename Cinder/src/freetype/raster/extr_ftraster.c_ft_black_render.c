
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * sizeBuff; int * buff; } ;
typedef TYPE_1__ black_TWorker ;
struct TYPE_12__ {int buffer; int rows; int width; } ;
struct TYPE_11__ {scalar_t__ n_points; int n_contours; scalar_t__* contours; TYPE_2__* points; } ;
struct TYPE_13__ {TYPE_5__ target; TYPE_4__ outline; } ;
struct TYPE_10__ {int flags; TYPE_5__* target; scalar_t__ source; } ;
struct TYPE_9__ {int x; int y; } ;
typedef int Long ;
typedef TYPE_2__ FT_Vector ;
typedef TYPE_3__ FT_Raster_Params ;
typedef int FT_Raster ;
typedef TYPE_4__ FT_Outline ;
typedef TYPE_5__ FT_Bitmap ;


 int FT_MAX_BLACK_POOL ;
 int FT_RASTER_FLAG_AA ;
 int FT_RASTER_FLAG_DIRECT ;
 int FT_THROW (int ) ;
 int Invalid ;
 int Not_Ini ;
 int RAS_VAR ;
 int Raster_Err_None ;
 int Render_Glyph (int ) ;
 int Unsupported ;
 TYPE_6__ ras ;

__attribute__((used)) static int
  ft_black_render( FT_Raster raster,
                   const FT_Raster_Params* params )
  {
    const FT_Outline* outline = (const FT_Outline*)params->source;
    const FT_Bitmap* target_map = params->target;

    black_TWorker worker[1];

    Long buffer[FT_MAX_BLACK_POOL];


    if ( !raster )
      return FT_THROW( Not_Ini );

    if ( !outline )
      return FT_THROW( Invalid );


    if ( outline->n_points == 0 || outline->n_contours <= 0 )
      return Raster_Err_None;

    if ( !outline->contours || !outline->points )
      return FT_THROW( Invalid );

    if ( outline->n_points !=
           outline->contours[outline->n_contours - 1] + 1 )
      return FT_THROW( Invalid );


    if ( params->flags & FT_RASTER_FLAG_DIRECT )
      return FT_THROW( Unsupported );

    if ( params->flags & FT_RASTER_FLAG_AA )
      return FT_THROW( Unsupported );

    if ( !target_map )
      return FT_THROW( Invalid );


    if ( !target_map->width || !target_map->rows )
      return Raster_Err_None;

    if ( !target_map->buffer )
      return FT_THROW( Invalid );


    {
      FT_Vector* vec = outline->points;
      FT_Vector* limit = vec + outline->n_points;


      for ( ; vec < limit; vec++ )
      {
        if ( vec->x < -0x1000000L || vec->x > 0x1000000L ||
             vec->y < -0x1000000L || vec->y > 0x1000000L )
         return FT_THROW( Invalid );
      }
    }

    ras.outline = *outline;
    ras.target = *target_map;

    worker->buff = buffer;
    worker->sizeBuff = (&buffer)[1];

    return Render_Glyph( RAS_VAR );
  }
