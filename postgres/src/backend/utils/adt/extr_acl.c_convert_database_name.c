
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
typedef int Oid ;


 int get_database_oid (char*,int) ;
 char* text_to_cstring (int *) ;

__attribute__((used)) static Oid
convert_database_name(text *databasename)
{
 char *dbname = text_to_cstring(databasename);

 return get_database_oid(dbname, 0);
}
