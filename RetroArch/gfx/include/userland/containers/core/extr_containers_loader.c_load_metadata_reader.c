
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VC_CONTAINER_READER_OPEN_FUNC_T ;


 int DL_PREFIX_METADATA ;
 int load_library (void**,char const*,int ,int) ;

__attribute__((used)) static VC_CONTAINER_READER_OPEN_FUNC_T load_metadata_reader(void **handle, const char *name)
{

   return load_library(handle, name, "metadata_", 1);
}
