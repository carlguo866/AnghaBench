
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_namestring_info {int num_segments; char* internal_name; char* next_external_char; int num_carats; scalar_t__ fully_qualified; } ;
typedef int acpi_status ;
typedef size_t acpi_size ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_IS_PATH_SEPARATOR (char const) ;
 int ACPI_NAMESEG_SIZE ;
 int AE_BAD_PATHNAME ;
 int AE_OK ;
 char AML_DUAL_NAME_PREFIX ;
 char AML_MULTI_NAME_PREFIX ;
 char AML_PARENT_PREFIX ;
 char AML_ROOT_PREFIX ;
 int ns_build_internal_name ;
 int return_ACPI_STATUS (int ) ;
 scalar_t__ toupper (int) ;

acpi_status acpi_ns_build_internal_name(struct acpi_namestring_info *info)
{
 u32 num_segments = info->num_segments;
 char *internal_name = info->internal_name;
 const char *external_name = info->next_external_char;
 char *result = ((void*)0);
 u32 i;

 ACPI_FUNCTION_TRACE(ns_build_internal_name);



 if (info->fully_qualified) {
  internal_name[0] = AML_ROOT_PREFIX;

  if (num_segments <= 1) {
   result = &internal_name[1];
  } else if (num_segments == 2) {
   internal_name[1] = AML_DUAL_NAME_PREFIX;
   result = &internal_name[2];
  } else {
   internal_name[1] = AML_MULTI_NAME_PREFIX;
   internal_name[2] = (char)num_segments;
   result = &internal_name[3];
  }
 } else {




  i = 0;
  if (info->num_carats) {
   for (i = 0; i < info->num_carats; i++) {
    internal_name[i] = AML_PARENT_PREFIX;
   }
  }

  if (num_segments <= 1) {
   result = &internal_name[i];
  } else if (num_segments == 2) {
   internal_name[i] = AML_DUAL_NAME_PREFIX;
   result = &internal_name[(acpi_size)i + 1];
  } else {
   internal_name[i] = AML_MULTI_NAME_PREFIX;
   internal_name[(acpi_size)i + 1] = (char)num_segments;
   result = &internal_name[(acpi_size)i + 2];
  }
 }



 for (; num_segments; num_segments--) {
  for (i = 0; i < ACPI_NAMESEG_SIZE; i++) {
   if (ACPI_IS_PATH_SEPARATOR(*external_name) ||
       (*external_name == 0)) {



    result[i] = '_';
   } else {


    result[i] = (char)toupper((int)*external_name);
    external_name++;
   }
  }



  if (!ACPI_IS_PATH_SEPARATOR(*external_name) &&
      (*external_name != 0)) {
   return_ACPI_STATUS(AE_BAD_PATHNAME);
  }



  external_name++;
  result += ACPI_NAMESEG_SIZE;
 }



 *result = 0;

 if (info->fully_qualified) {
  ACPI_DEBUG_PRINT((ACPI_DB_EXEC,
      "Returning [%p] (abs) \"\\%s\"\n",
      internal_name, internal_name));
 } else {
  ACPI_DEBUG_PRINT((ACPI_DB_EXEC, "Returning [%p] (rel) \"%s\"\n",
      internal_name, internal_name));
 }

 return_ACPI_STATUS(AE_OK);
}
