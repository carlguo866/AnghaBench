
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_10__ ;


typedef scalar_t__ int64_t ;
struct TYPE_19__ {TYPE_1__* priv; } ;
typedef TYPE_2__ VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_20__ {int object_level; int null; } ;
typedef TYPE_3__ VC_CONTAINER_MODULE_T ;
struct TYPE_18__ {TYPE_3__* module; } ;
struct TYPE_17__ {scalar_t__ type; scalar_t__ (* pf_func ) (TYPE_2__*) ;int psz_name; int guid; } ;
typedef int GUID_T ;
typedef scalar_t__ ASF_OBJECT_TYPE_T ;


 scalar_t__ ASF_OBJECT_HEADER_SIZE ;
 scalar_t__ ASF_OBJECT_TYPE_HEADER_EXT_INTERNAL ;
 int LOG_DEBUG (TYPE_2__*,char*,int ) ;
 int LOG_FORMAT (TYPE_2__*,char*,int ) ;
 scalar_t__ STREAM_POSITION (TYPE_2__*) ;
 scalar_t__ VC_CONTAINER_ERROR_CORRUPTED ;
 scalar_t__ VC_CONTAINER_ERROR_EOS ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 int WRITE_GUID (TYPE_2__*,int ,char*) ;
 int WRITE_U32 (TYPE_2__*,scalar_t__,char*) ;
 int WRITE_U64 (TYPE_2__*,scalar_t__,char*) ;
 TYPE_10__* asf_object_list ;
 scalar_t__ stub1 (TYPE_2__*) ;
 scalar_t__ stub2 (TYPE_2__*) ;
 scalar_t__ stub3 (TYPE_2__*) ;
 int vc_container_assert (int ) ;
 int vc_container_writer_extraio_disable (TYPE_2__*,int *) ;
 int vc_container_writer_extraio_enable (TYPE_2__*,int *) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T asf_write_object( VC_CONTAINER_T *p_ctx, ASF_OBJECT_TYPE_T type )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   int64_t object_size = 0;
   unsigned int i;


   for( i = 0; asf_object_list[i].type && asf_object_list[i].type != type; i++ );


   if(!asf_object_list[i].type)
   {
      vc_container_assert(0);
      return VC_CONTAINER_ERROR_CORRUPTED;
   }






   if(!vc_container_writer_extraio_enable(p_ctx, &module->null))
   {
      asf_object_list[i].pf_func(p_ctx);
      object_size = STREAM_POSITION(p_ctx);
   }
   vc_container_writer_extraio_disable(p_ctx, &module->null);


   if(type == ASF_OBJECT_TYPE_HEADER_EXT_INTERNAL)
   {
      WRITE_U32(p_ctx, object_size, "Header Extension Data Size");

      status = asf_object_list[i].pf_func(p_ctx);
      return status;
   }



   if(WRITE_GUID(p_ctx, asf_object_list[i].guid, "Object ID") != sizeof(GUID_T))
      return VC_CONTAINER_ERROR_EOS;

   LOG_FORMAT(p_ctx, "Object Name: %s", asf_object_list[i].psz_name);

   WRITE_U64(p_ctx, object_size + ASF_OBJECT_HEADER_SIZE, "Object Size");

   module->object_level++;


   status = asf_object_list[i].pf_func(p_ctx);

   module->object_level--;

   if(status != VC_CONTAINER_SUCCESS)
      LOG_DEBUG(p_ctx, "object %s appears to be corrupted", asf_object_list[i].psz_name);

   return status;
}
