
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int jsize ;
typedef int jfloatArray ;
typedef scalar_t__ jfloat ;
struct TYPE_5__ {int (* GetArrayLength ) (TYPE_1__**,int ) ;int (* ReleaseFloatArrayElements ) (TYPE_1__**,int ,scalar_t__*,int ) ;} ;
typedef TYPE_1__* JNIEnv ;


 int stub1 (TYPE_1__**,int ) ;
 int stub2 (TYPE_1__**,int ,scalar_t__*,int ) ;

void SWIG_JavaArrayArgoutFloat (JNIEnv *jenv, jfloat *jarr, float *carr, jfloatArray input) {
  int i;
  jsize sz = (*jenv)->GetArrayLength(jenv, input);
  for (i=0; i<sz; i++)
    jarr[i] = (jfloat)carr[i];
  (*jenv)->ReleaseFloatArrayElements(jenv, input, jarr, 0);
}
