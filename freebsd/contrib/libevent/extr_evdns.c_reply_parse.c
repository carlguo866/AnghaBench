
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
typedef int tmp_name ;
struct request {int request_type; int request_len; int * put_cname_in_ptr; int * request; struct evdns_base* base; } ;
struct TYPE_7__ {int addrcount; int * addresses; } ;
struct TYPE_6__ {char* name; } ;
struct TYPE_5__ {int addrcount; int * addresses; } ;
struct TYPE_8__ {TYPE_3__ aaaa; TYPE_2__ ptr; TYPE_1__ a; } ;
struct reply {int type; int have_answer; TYPE_4__ data; } ;
struct evdns_base {int global_randomize_case; } ;
typedef int reply ;
typedef int cname ;
typedef int cmp_name ;


 int ASSERT_LOCKED (struct evdns_base*) ;
 int CLASS_INET ;
 int DNS_ERR_NOTEXIST ;
 int EVUTIL_ASSERT (int) ;
 int GET16 (int) ;
 int GET32 (int) ;
 int HOST_NAME_MAX ;
 int MAX_V4_ADDRS ;
 int MAX_V6_ADDRS ;
 int MIN (int,int) ;
 int SKIP_NAME ;
 int TYPE_A ;
 int TYPE_AAAA ;
 int TYPE_CNAME ;
 int TYPE_PTR ;
 int TYPE_SOA ;
 scalar_t__ evutil_ascii_strcasecmp (char*,char*) ;
 int memcpy (int *,int *,int) ;
 int memset (struct reply*,int ,int) ;
 int mm_strdup (char*) ;
 scalar_t__ name_parse (int *,int,int*,char*,int) ;
 int reply_handle (struct request*,int,int,struct reply*) ;
 struct request* request_find_from_trans_id (struct evdns_base*,int) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
reply_parse(struct evdns_base *base, u8 *packet, int length) {
 int j = 0, k = 0;
 u16 t_;
 u32 t32_;
 char tmp_name[256], cmp_name[256];
 int name_matches = 0;

 u16 trans_id, questions, answers, authority, additional, datalength;
 u16 flags = 0;
 u32 ttl, ttl_r = 0xffffffff;
 struct reply reply;
 struct request *req = ((void*)0);
 unsigned int i;

 ASSERT_LOCKED(base);

 GET16(trans_id);
 GET16(flags);
 GET16(questions);
 GET16(answers);
 GET16(authority);
 GET16(additional);
 (void) authority;
 (void) additional;

 req = request_find_from_trans_id(base, trans_id);
 if (!req) return -1;
 EVUTIL_ASSERT(req->base == base);

 memset(&reply, 0, sizeof(reply));


 if (!(flags & 0x8000)) return -1;
 if ((flags & 0x020f) && (flags & 0x020f) != DNS_ERR_NOTEXIST) {

  goto err;
 }
 reply.type = req->request_type;


 for (i = 0; i < questions; ++i) {



  tmp_name[0] = '\0';
  cmp_name[0] = '\0';
  k = j;
  if (name_parse(packet, length, &j, tmp_name, sizeof(tmp_name)) < 0)
   goto err;
  if (name_parse(req->request, req->request_len, &k,
   cmp_name, sizeof(cmp_name))<0)
   goto err;
  if (!base->global_randomize_case) {
   if (strcmp(tmp_name, cmp_name) == 0)
    name_matches = 1;
  } else {
   if (evutil_ascii_strcasecmp(tmp_name, cmp_name) == 0)
    name_matches = 1;
  }

  j += 4;
  if (j > length)
   goto err;
 }

 if (!name_matches)
  goto err;





 for (i = 0; i < answers; ++i) {
  u16 type, class;

  do { tmp_name[0] = '\0'; if (name_parse(packet, length, &j, tmp_name, sizeof(tmp_name))<0) goto err; } while (0);
  GET16(type);
  GET16(class);
  GET32(ttl);
  GET16(datalength);

  if (type == TYPE_A && class == CLASS_INET) {
   int addrcount, addrtocopy;
   if (req->request_type != TYPE_A) {
    j += datalength; continue;
   }
   if ((datalength & 3) != 0)
       goto err;
   addrcount = datalength >> 2;
   addrtocopy = MIN(MAX_V4_ADDRS - reply.data.a.addrcount, (unsigned)addrcount);

   ttl_r = MIN(ttl_r, ttl);

   if (j + 4*addrtocopy > length) goto err;
   memcpy(&reply.data.a.addresses[reply.data.a.addrcount],
       packet + j, 4*addrtocopy);
   j += 4*addrtocopy;
   reply.data.a.addrcount += addrtocopy;
   reply.have_answer = 1;
   if (reply.data.a.addrcount == MAX_V4_ADDRS) break;
  } else if (type == TYPE_PTR && class == CLASS_INET) {
   if (req->request_type != TYPE_PTR) {
    j += datalength; continue;
   }
   if (name_parse(packet, length, &j, reply.data.ptr.name,
         sizeof(reply.data.ptr.name))<0)
    goto err;
   ttl_r = MIN(ttl_r, ttl);
   reply.have_answer = 1;
   break;
  } else if (type == TYPE_CNAME) {
   char cname[HOST_NAME_MAX];
   if (!req->put_cname_in_ptr || *req->put_cname_in_ptr) {
    j += datalength; continue;
   }
   if (name_parse(packet, length, &j, cname,
    sizeof(cname))<0)
    goto err;
   *req->put_cname_in_ptr = mm_strdup(cname);
  } else if (type == TYPE_AAAA && class == CLASS_INET) {
   int addrcount, addrtocopy;
   if (req->request_type != TYPE_AAAA) {
    j += datalength; continue;
   }
   if ((datalength & 15) != 0)
    goto err;
   addrcount = datalength >> 4;
   addrtocopy = MIN(MAX_V6_ADDRS - reply.data.aaaa.addrcount, (unsigned)addrcount);
   ttl_r = MIN(ttl_r, ttl);


   if (j + 16*addrtocopy > length) goto err;
   memcpy(&reply.data.aaaa.addresses[reply.data.aaaa.addrcount],
       packet + j, 16*addrtocopy);
   reply.data.aaaa.addrcount += addrtocopy;
   j += 16*addrtocopy;
   reply.have_answer = 1;
   if (reply.data.aaaa.addrcount == MAX_V6_ADDRS) break;
  } else {

   j += datalength;
  }
 }

 if (!reply.have_answer) {
  for (i = 0; i < authority; ++i) {
   u16 type, class;
   do { tmp_name[0] = '\0'; if (name_parse(packet, length, &j, tmp_name, sizeof(tmp_name))<0) goto err; } while (0);
   GET16(type);
   GET16(class);
   GET32(ttl);
   GET16(datalength);
   if (type == TYPE_SOA && class == CLASS_INET) {
    u32 serial, refresh, retry, expire, minimum;
    do { tmp_name[0] = '\0'; if (name_parse(packet, length, &j, tmp_name, sizeof(tmp_name))<0) goto err; } while (0);
    do { tmp_name[0] = '\0'; if (name_parse(packet, length, &j, tmp_name, sizeof(tmp_name))<0) goto err; } while (0);
    GET32(serial);
    GET32(refresh);
    GET32(retry);
    GET32(expire);
    GET32(minimum);
    (void)expire;
    (void)retry;
    (void)refresh;
    (void)serial;
    ttl_r = MIN(ttl_r, ttl);
    ttl_r = MIN(ttl_r, minimum);
   } else {

    j += datalength;
   }
  }
 }

 if (ttl_r == 0xffffffff)
  ttl_r = 0;

 reply_handle(req, flags, ttl_r, &reply);
 return 0;
 err:
 if (req)
  reply_handle(req, flags, 0, ((void*)0));
 return -1;
}
