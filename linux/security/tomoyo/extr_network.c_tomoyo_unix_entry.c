
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_5__ {size_t protocol; size_t operation; struct tomoyo_path_info* address; } ;
struct TYPE_6__ {TYPE_2__ unix_network; } ;
struct tomoyo_request_info {TYPE_3__ param; int param_type; } ;
struct tomoyo_path_info {char* name; } ;
struct TYPE_4__ {char* addr; int addr_len; } ;
struct tomoyo_addr_info {size_t protocol; size_t operation; TYPE_1__ unix0; } ;
typedef int sa_family_t ;


 int ENOMEM ;
 scalar_t__ TOMOYO_CONFIG_DISABLED ;
 int TOMOYO_RETRY_REQUEST ;
 int TOMOYO_TYPE_UNIX_ACL ;
 int kfree (char*) ;
 int strnlen (char*,int) ;
 int tomoyo_audit_unix_log (struct tomoyo_request_info*) ;
 int tomoyo_check_acl (struct tomoyo_request_info*,int ) ;
 int tomoyo_check_unix_acl ;
 char* tomoyo_encode2 (char*,int) ;
 int tomoyo_fill_path_info (struct tomoyo_path_info*) ;
 scalar_t__ tomoyo_init_request_info (struct tomoyo_request_info*,int *,scalar_t__ const) ;
 int tomoyo_read_lock () ;
 int tomoyo_read_unlock (int const) ;
 scalar_t__** tomoyo_unix2mac ;

__attribute__((used)) static int tomoyo_unix_entry(const struct tomoyo_addr_info *address)
{
 const int idx = tomoyo_read_lock();
 struct tomoyo_request_info r;
 int error = 0;
 const u8 type = tomoyo_unix2mac[address->protocol][address->operation];

 if (type && tomoyo_init_request_info(&r, ((void*)0), type)
     != TOMOYO_CONFIG_DISABLED) {
  char *buf = address->unix0.addr;
  int len = address->unix0.addr_len - sizeof(sa_family_t);

  if (len <= 0) {
   buf = "anonymous";
   len = 9;
  } else if (buf[0]) {
   len = strnlen(buf, len);
  }
  buf = tomoyo_encode2(buf, len);
  if (buf) {
   struct tomoyo_path_info addr;

   addr.name = buf;
   tomoyo_fill_path_info(&addr);
   r.param_type = TOMOYO_TYPE_UNIX_ACL;
   r.param.unix_network.protocol = address->protocol;
   r.param.unix_network.operation = address->operation;
   r.param.unix_network.address = &addr;
   do {
    tomoyo_check_acl(&r, tomoyo_check_unix_acl);
    error = tomoyo_audit_unix_log(&r);
   } while (error == TOMOYO_RETRY_REQUEST);
   kfree(buf);
  } else
   error = -ENOMEM;
 }
 tomoyo_read_unlock(idx);
 return error;
}
