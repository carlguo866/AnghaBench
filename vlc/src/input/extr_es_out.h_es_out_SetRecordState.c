
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int es_out_t ;


 int ES_OUT_SET_RECORD_STATE ;
 int es_out_Control (int *,int ,int) ;

__attribute__((used)) static inline int es_out_SetRecordState( es_out_t *p_out, bool b_record )
{
    return es_out_Control( p_out, ES_OUT_SET_RECORD_STATE, b_record );
}
