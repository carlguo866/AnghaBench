
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* OPJ_SIZE_T ;


 int OPJ_ARG_NOT_USED (void*) ;

OPJ_SIZE_T opj_stream_default_read(void * p_buffer, OPJ_SIZE_T p_nb_bytes,
                                   void * p_user_data)
{
    OPJ_ARG_NOT_USED(p_buffer);
    OPJ_ARG_NOT_USED(p_nb_bytes);
    OPJ_ARG_NOT_USED(p_user_data);
    return (OPJ_SIZE_T) - 1;
}
