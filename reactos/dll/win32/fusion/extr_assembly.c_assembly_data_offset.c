
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
typedef size_t ULONG ;
struct TYPE_3__ {int * data; } ;
typedef TYPE_1__ ASSEMBLY ;



__attribute__((used)) static VOID *assembly_data_offset(ASSEMBLY *assembly, ULONG offset)
{
    return &assembly->data[offset];
}
