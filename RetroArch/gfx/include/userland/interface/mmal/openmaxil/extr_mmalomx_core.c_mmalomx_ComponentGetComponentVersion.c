
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ state; int registry_id; } ;
struct TYPE_7__ {scalar_t__ nVersion; } ;
typedef TYPE_1__ OMX_VERSIONTYPE ;
typedef scalar_t__ OMX_UUIDTYPE ;
typedef char* OMX_STRING ;
typedef scalar_t__ OMX_HANDLETYPE ;
typedef int OMX_ERRORTYPE ;
typedef TYPE_2__ MMALOMX_COMPONENT_T ;


 int LOG_TRACE (char*,scalar_t__,char*,TYPE_1__*,TYPE_1__*,scalar_t__*) ;
 int OMX_ErrorBadParameter ;
 int OMX_ErrorInvalidComponent ;
 int OMX_ErrorInvalidState ;
 int OMX_ErrorNone ;
 int OMX_MAX_STRINGNAME_SIZE ;
 scalar_t__ OMX_StateInvalid ;
 scalar_t__ OMX_VERSION ;
 char* mmalomx_registry_component_name (int ,char const**) ;
 int snprintf (char*,int,char*,char const*,...) ;

__attribute__((used)) static OMX_ERRORTYPE mmalomx_ComponentGetComponentVersion(
   OMX_HANDLETYPE hComponent,
   OMX_STRING pComponentName,
   OMX_VERSIONTYPE* pComponentVersion,
   OMX_VERSIONTYPE* pSpecVersion,
   OMX_UUIDTYPE* pComponentUUID)
{
   MMALOMX_COMPONENT_T *component = (MMALOMX_COMPONENT_T *)hComponent;
   const char *short_name, *prefix;

   LOG_TRACE("hComponent %p, componentName %p, componentVersion %p, "
             "pSpecVersion %p, componentUUID %p",
             hComponent, pComponentName, pComponentVersion, pSpecVersion,
             pComponentUUID);


   if (!hComponent)
      return OMX_ErrorInvalidComponent;
   if (component->state == OMX_StateInvalid)
      return OMX_ErrorInvalidState;
   if (!pComponentName || !pComponentVersion || !pSpecVersion || !pComponentUUID )
      return OMX_ErrorBadParameter;

   short_name = mmalomx_registry_component_name(component->registry_id, &prefix);

   snprintf(pComponentName, OMX_MAX_STRINGNAME_SIZE, "%s%s", short_name, prefix);
   pComponentVersion->nVersion = 0;
   pSpecVersion->nVersion = OMX_VERSION;
   snprintf((char *)(*pComponentUUID), sizeof(OMX_UUIDTYPE), "%s", pComponentName);

   return OMX_ErrorNone;
}
