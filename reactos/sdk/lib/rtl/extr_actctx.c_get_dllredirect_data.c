
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct string_index {int data_offset; } ;
struct dllredirect_data {int dummy; } ;
struct TYPE_3__ {scalar_t__ dllredirect_section; } ;
typedef int BYTE ;
typedef TYPE_1__ ACTIVATION_CONTEXT ;



__attribute__((used)) static inline struct dllredirect_data *get_dllredirect_data(ACTIVATION_CONTEXT *ctxt, struct string_index *index)
{
    return (struct dllredirect_data*)((BYTE*)ctxt->dllredirect_section + index->data_offset);
}
