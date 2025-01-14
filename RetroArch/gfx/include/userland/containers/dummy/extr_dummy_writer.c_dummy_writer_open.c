
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* priv; int capabilities; int tracks; } ;
typedef TYPE_2__ VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_10__ {int track; } ;
typedef TYPE_3__ VC_CONTAINER_MODULE_T ;
struct TYPE_8__ {int pf_control; int pf_write; int pf_close; TYPE_3__* module; int uri; } ;


 int LOG_DEBUG (TYPE_2__*,char*,int ) ;
 int VC_CONTAINER_CAPS_DYNAMIC_TRACK_ADD ;
 int VC_CONTAINER_ERROR_FORMAT_INVALID ;
 int VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED ;
 int VC_CONTAINER_ERROR_OUT_OF_MEMORY ;
 int VC_CONTAINER_SUCCESS ;
 int dummy_writer_close ;
 int dummy_writer_control ;
 int dummy_writer_write ;
 TYPE_3__* malloc (int) ;
 int memset (TYPE_3__*,int ,int) ;
 scalar_t__ strcasecmp (char const*,char*) ;
 int vc_uri_find_query (int ,int ,char*,char const**) ;
 char* vc_uri_path_extension (int ) ;

VC_CONTAINER_STATUS_T dummy_writer_open( VC_CONTAINER_T *p_ctx )
{
   const char *extension = vc_uri_path_extension(p_ctx->priv->uri);
   VC_CONTAINER_MODULE_T *module = 0;
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_ERROR_FORMAT_INVALID;


   vc_uri_find_query(p_ctx->priv->uri, 0, "container", &extension);


   if(!extension)
      return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;
   if(strcasecmp(extension, "dummy"))
      return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;


   module = malloc(sizeof(*module));
   if(!module) { status = VC_CONTAINER_ERROR_OUT_OF_MEMORY; goto error; }
   memset(module, 0, sizeof(*module));
   p_ctx->priv->module = module;
   p_ctx->tracks = module->track;

   p_ctx->capabilities |= VC_CONTAINER_CAPS_DYNAMIC_TRACK_ADD;

   p_ctx->priv->pf_close = dummy_writer_close;
   p_ctx->priv->pf_write = dummy_writer_write;
   p_ctx->priv->pf_control = dummy_writer_control;
   return VC_CONTAINER_SUCCESS;

 error:
   LOG_DEBUG(p_ctx, "dummy: error opening stream (%i)", status);
   return status;
}
