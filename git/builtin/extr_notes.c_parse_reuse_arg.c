
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct option {struct note_data* value; } ;
struct object_id {int dummy; } ;
struct TYPE_3__ {scalar_t__ len; } ;
struct note_data {int given; TYPE_1__ buf; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 int BUG_ON_OPT_NEG (int) ;
 int OBJ_BLOB ;
 int _ (char*) ;
 int die (int ,char const*) ;
 int free (char*) ;
 scalar_t__ get_oid (char const*,struct object_id*) ;
 char* read_object_file (struct object_id*,int*,unsigned long*) ;
 int strbuf_add (TYPE_1__*,char*,unsigned long) ;
 int strbuf_addch (TYPE_1__*,char) ;

__attribute__((used)) static int parse_reuse_arg(const struct option *opt, const char *arg, int unset)
{
 struct note_data *d = opt->value;
 char *buf;
 struct object_id object;
 enum object_type type;
 unsigned long len;

 BUG_ON_OPT_NEG(unset);

 if (d->buf.len)
  strbuf_addch(&d->buf, '\n');

 if (get_oid(arg, &object))
  die(_("failed to resolve '%s' as a valid ref."), arg);
 if (!(buf = read_object_file(&object, &type, &len)))
  die(_("failed to read object '%s'."), arg);
 if (type != OBJ_BLOB) {
  free(buf);
  die(_("cannot read note data from non-blob object '%s'."), arg);
 }
 strbuf_add(&d->buf, buf, len);
 free(buf);

 d->given = 1;
 return 0;
}
