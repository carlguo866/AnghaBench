
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee1394_device_id {int match_flags; int vendor_id; int model_id; int specifier_id; int version; } ;


 int ADD (char*,char*,int,int) ;
 int IEEE1394_MATCH_MODEL_ID ;
 int IEEE1394_MATCH_SPECIFIER_ID ;
 int IEEE1394_MATCH_VENDOR_ID ;
 int IEEE1394_MATCH_VERSION ;
 void* TO_NATIVE (int) ;
 int add_wildcard (char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static int do_ieee1394_entry(const char *filename,
        struct ieee1394_device_id *id, char *alias)
{
 id->match_flags = TO_NATIVE(id->match_flags);
 id->vendor_id = TO_NATIVE(id->vendor_id);
 id->model_id = TO_NATIVE(id->model_id);
 id->specifier_id = TO_NATIVE(id->specifier_id);
 id->version = TO_NATIVE(id->version);

 strcpy(alias, "ieee1394:");
 ADD(alias, "ven", id->match_flags & IEEE1394_MATCH_VENDOR_ID,
     id->vendor_id);
 ADD(alias, "mo", id->match_flags & IEEE1394_MATCH_MODEL_ID,
     id->model_id);
 ADD(alias, "sp", id->match_flags & IEEE1394_MATCH_SPECIFIER_ID,
     id->specifier_id);
 ADD(alias, "ver", id->match_flags & IEEE1394_MATCH_VERSION,
     id->version);

 add_wildcard(alias);
 return 1;
}
