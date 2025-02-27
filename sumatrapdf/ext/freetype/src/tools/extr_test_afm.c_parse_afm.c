
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_17__ {int get_index; int FontInfo; } ;
struct TYPE_16__ {int memory; } ;
struct TYPE_15__ {int limit; int cursor; int size; } ;
struct TYPE_14__ {TYPE_1__* afm_parser_funcs; } ;
struct TYPE_13__ {int (* init ) (TYPE_5__*,int ,int ,int ) ;int (* parse ) (TYPE_5__*) ;int (* done ) (TYPE_5__*) ;} ;
typedef TYPE_2__* PSAux_Service ;
typedef TYPE_3__* FT_Stream ;
typedef TYPE_4__* FT_Library ;
typedef int FT_Error ;
typedef TYPE_5__ AFM_ParserRec ;
typedef int AFM_FontInfo ;


 int FT_Err_Ok ;
 scalar_t__ FT_Get_Module_Interface (TYPE_4__*,char*) ;
 int FT_Stream_EnterFrame (TYPE_3__*,int ) ;
 int dummy_get_index ;
 int stub1 (TYPE_5__*,int ,int ,int ) ;
 int stub2 (TYPE_5__*) ;
 int stub3 (TYPE_5__*) ;

FT_Error
  parse_afm( FT_Library library,
             FT_Stream stream,
             AFM_FontInfo fi )
  {
    PSAux_Service psaux;
    AFM_ParserRec parser;
    FT_Error error = FT_Err_Ok;


    psaux = (PSAux_Service)FT_Get_Module_Interface( library, "psaux" );
    if ( !psaux || !psaux->afm_parser_funcs )
      return -1;

    error = FT_Stream_EnterFrame( stream, stream->size );
    if ( error )
      return error;

    error = psaux->afm_parser_funcs->init( &parser,
                                           library->memory,
                                           stream->cursor,
                                           stream->limit );
    if ( error )
      return error;

    parser.FontInfo = fi;
    parser.get_index = dummy_get_index;

    error = psaux->afm_parser_funcs->parse( &parser );

    psaux->afm_parser_funcs->done( &parser );

    return error;
  }
