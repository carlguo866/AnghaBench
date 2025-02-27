
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_10__ ;


typedef int zval ;
typedef TYPE_2__* xmlNsPtr ;
typedef TYPE_3__* xmlNodePtr ;
typedef TYPE_4__* xmlAttrPtr ;
struct TYPE_24__ {int s; int member_0; } ;
typedef TYPE_5__ smart_str ;
typedef TYPE_6__* encodePtr ;
struct TYPE_19__ {char* type_str; char* ns; } ;
struct TYPE_25__ {TYPE_10__ details; int * (* to_zval ) (int *,TYPE_10__*,TYPE_3__*) ;} ;
struct TYPE_23__ {TYPE_1__* children; } ;
struct TYPE_22__ {int doc; int properties; } ;
struct TYPE_21__ {scalar_t__ href; } ;
struct TYPE_20__ {int content; } ;


 int BAD_CAST (char*) ;
 scalar_t__ SOAP_GLOBAL (int ) ;
 int XSI_NAMESPACE ;
 int efree (char*) ;
 TYPE_4__* get_attribute_ex (int ,char*,int ) ;
 int parse_namespace (int ,char**,char**) ;
 int smart_str_0 (TYPE_5__*) ;
 int smart_str_appendc (TYPE_5__*,char) ;
 int smart_str_appends (TYPE_5__*,char*) ;
 int smart_str_free (TYPE_5__*) ;
 int * stub1 (int *,TYPE_10__*,TYPE_3__*) ;
 int typemap ;
 TYPE_2__* xmlSearchNs (int ,TYPE_3__*,int ) ;
 TYPE_6__* zend_hash_find_ptr (scalar_t__,int ) ;

__attribute__((used)) static zval *master_to_zval_int(zval *ret, encodePtr encode, xmlNodePtr data)
{
 if (SOAP_GLOBAL(typemap)) {
  if (encode->details.type_str) {
   smart_str nscat = {0};
   encodePtr new_enc;

   if (encode->details.ns) {
    smart_str_appends(&nscat, encode->details.ns);
    smart_str_appendc(&nscat, ':');
   }
   smart_str_appends(&nscat, encode->details.type_str);
   smart_str_0(&nscat);
   if ((new_enc = zend_hash_find_ptr(SOAP_GLOBAL(typemap), nscat.s)) != ((void*)0)) {
    encode = new_enc;
   }
   smart_str_free(&nscat);
  } else {
   xmlAttrPtr type_attr = get_attribute_ex(data->properties,"type", XSI_NAMESPACE);

   if (type_attr != ((void*)0)) {
    encodePtr new_enc;
    xmlNsPtr nsptr;
    char *ns, *cptype;
    smart_str nscat = {0};

    parse_namespace(type_attr->children->content, &cptype, &ns);
    nsptr = xmlSearchNs(data->doc, data, BAD_CAST(ns));
    if (nsptr != ((void*)0)) {
     smart_str_appends(&nscat, (char*)nsptr->href);
     smart_str_appendc(&nscat, ':');
    }
    smart_str_appends(&nscat, cptype);
    smart_str_0(&nscat);
    efree(cptype);
    if (ns) {efree(ns);}
    if ((new_enc = zend_hash_find_ptr(SOAP_GLOBAL(typemap), nscat.s)) != ((void*)0)) {
     encode = new_enc;
    }
    smart_str_free(&nscat);
   }
  }
 }
 if (encode->to_zval) {
  ret = encode->to_zval(ret, &encode->details, data);
 }
 return ret;
}
