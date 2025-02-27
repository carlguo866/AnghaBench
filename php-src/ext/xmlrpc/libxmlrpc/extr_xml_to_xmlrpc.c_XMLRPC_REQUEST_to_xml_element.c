
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int children; void* name; int text; } ;
typedef TYPE_1__ xml_element ;
typedef scalar_t__ XMLRPC_VALUE ;
typedef scalar_t__ XMLRPC_REQUEST_TYPE ;
typedef scalar_t__ XMLRPC_REQUEST ;


 char* ELEM_METHODCALL ;
 char const* ELEM_METHODNAME ;
 char* ELEM_METHODRESPONSE ;
 char const* ELEM_PARAMS ;
 int Q_PushTail (int *,TYPE_1__*) ;
 scalar_t__ XMLRPC_RequestGetData (scalar_t__) ;
 char* XMLRPC_RequestGetMethodName (scalar_t__) ;
 scalar_t__ XMLRPC_RequestGetRequestType (scalar_t__) ;
 TYPE_1__* XMLRPC_to_xml_element_worker (int *,scalar_t__,scalar_t__,int ) ;
 void* estrdup (char const*) ;
 int simplestring_add (int *,char const*) ;
 TYPE_1__* xml_elem_new () ;
 scalar_t__ xmlrpc_request_call ;
 scalar_t__ xmlrpc_request_response ;

xml_element* XMLRPC_REQUEST_to_xml_element(XMLRPC_REQUEST request) {
   xml_element* wrapper = ((void*)0);
   if (request) {
      const char* pStr = ((void*)0);
      XMLRPC_REQUEST_TYPE request_type = XMLRPC_RequestGetRequestType(request);
      XMLRPC_VALUE xParams = XMLRPC_RequestGetData(request);

      wrapper = xml_elem_new();

      if (request_type == xmlrpc_request_call) {
         pStr = ELEM_METHODCALL;
  }
  else if (request_type == xmlrpc_request_response) {
         pStr = ELEM_METHODRESPONSE;
      }
      if (pStr) {
         wrapper->name = estrdup(pStr);
      }

  if(request_type == xmlrpc_request_call) {
      pStr = XMLRPC_RequestGetMethodName(request);

      if (pStr) {
         xml_element* method = xml_elem_new();
         method->name = estrdup(ELEM_METHODNAME);
         simplestring_add(&method->text, pStr);
         Q_PushTail(&wrapper->children, method);
      }
  }
      if (xParams) {
         Q_PushTail(&wrapper->children,
                    XMLRPC_to_xml_element_worker(((void*)0), XMLRPC_RequestGetData(request), XMLRPC_RequestGetRequestType(request), 0));
  }
  else {

         xml_element* params = xml_elem_new();
         params->name = estrdup(ELEM_PARAMS);
         Q_PushTail(&wrapper->children, params);
      }
   }
   return wrapper;
}
