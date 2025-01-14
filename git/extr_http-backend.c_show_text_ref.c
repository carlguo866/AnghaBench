
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct object_id {int dummy; } ;
struct object {scalar_t__ type; struct object_id const oid; } ;


 scalar_t__ OBJ_TAG ;
 struct object* deref_tag (int ,struct object*,char const*,int ) ;
 int oid_to_hex (struct object_id const*) ;
 struct object* parse_object (int ,struct object_id const*) ;
 int strbuf_addf (struct strbuf*,char*,int ,char const*) ;
 char* strip_namespace (char const*) ;
 int the_repository ;

__attribute__((used)) static int show_text_ref(const char *name, const struct object_id *oid,
    int flag, void *cb_data)
{
 const char *name_nons = strip_namespace(name);
 struct strbuf *buf = cb_data;
 struct object *o = parse_object(the_repository, oid);
 if (!o)
  return 0;

 strbuf_addf(buf, "%s\t%s\n", oid_to_hex(oid), name_nons);
 if (o->type == OBJ_TAG) {
  o = deref_tag(the_repository, o, name, 0);
  if (!o)
   return 0;
  strbuf_addf(buf, "%s\t%s^{}\n", oid_to_hex(&o->oid),
       name_nons);
 }
 return 0;
}
