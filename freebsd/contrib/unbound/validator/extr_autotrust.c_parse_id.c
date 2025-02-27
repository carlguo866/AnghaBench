
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct val_anchors {int dummy; } ;
struct trust_anchor {int dummy; } ;


 struct trust_anchor* autr_tp_create (struct val_anchors*,int *,size_t,int ) ;
 int free (int *) ;
 int parse_int (char*,int*) ;
 int * sldns_str2wire_dname (char*,size_t*) ;
 char* strchr (char*,char) ;

__attribute__((used)) static struct trust_anchor*
parse_id(struct val_anchors* anchors, char* line)
{
 struct trust_anchor *tp;
 int r;
 uint16_t dclass;
 uint8_t* dname;
 size_t dname_len;

 char* next = strchr(line, ' ');
 if(!next)
  return ((void*)0);
 next[0] = 0;
 dname = sldns_str2wire_dname(line, &dname_len);
 if(!dname)
  return ((void*)0);


 dclass = parse_int(next+1, &r);
 if(r == -1) {
  free(dname);
  return ((void*)0);
 }


 tp = autr_tp_create(anchors, dname, dname_len, dclass);
 free(dname);
 return tp;
}
