
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ima_measure_rule_entry {int list; } ;
typedef int ssize_t ;


 int AUDIT_INTEGRITY_STATUS ;
 int EACCES ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int * ima_measure ;
 int ima_measure_mutex ;
 int ima_parse_rule (char*,struct ima_measure_rule_entry*) ;
 int integrity_audit_msg (int ,int *,int *,char const*,char*,int,int) ;
 int kfree (struct ima_measure_rule_entry*) ;
 struct ima_measure_rule_entry* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int measure_default_rules ;
 int measure_policy_rules ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strlen (char*) ;
 char* strsep (char**,char*) ;

ssize_t ima_parse_add_rule(char *rule)
{
 const char *op = "update_policy";
 char *p;
 struct ima_measure_rule_entry *entry;
 ssize_t result, len;
 int audit_info = 0;


 if (ima_measure != &measure_default_rules) {
  integrity_audit_msg(AUDIT_INTEGRITY_STATUS, ((void*)0),
        ((void*)0), op, "already exists",
        -EACCES, audit_info);
  return -EACCES;
 }

 entry = kzalloc(sizeof(*entry), GFP_KERNEL);
 if (!entry) {
  integrity_audit_msg(AUDIT_INTEGRITY_STATUS, ((void*)0),
        ((void*)0), op, "-ENOMEM", -ENOMEM, audit_info);
  return -ENOMEM;
 }

 INIT_LIST_HEAD(&entry->list);

 p = strsep(&rule, "\n");
 len = strlen(p) + 1;

 if (*p == '#') {
  kfree(entry);
  return len;
 }

 result = ima_parse_rule(p, entry);
 if (result) {
  kfree(entry);
  integrity_audit_msg(AUDIT_INTEGRITY_STATUS, ((void*)0),
        ((void*)0), op, "invalid policy", result,
        audit_info);
  return result;
 }

 mutex_lock(&ima_measure_mutex);
 list_add_tail(&entry->list, &measure_policy_rules);
 mutex_unlock(&ima_measure_mutex);

 return len;
}
