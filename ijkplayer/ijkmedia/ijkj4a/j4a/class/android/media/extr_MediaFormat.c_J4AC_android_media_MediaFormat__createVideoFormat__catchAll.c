
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jstring ;
typedef int * jobject ;
typedef int jint ;
typedef int JNIEnv ;


 int * J4AC_android_media_MediaFormat__createVideoFormat (int *,int ,int ,int ) ;
 scalar_t__ J4A_ExceptionCheck__catchAll (int *) ;

jobject J4AC_android_media_MediaFormat__createVideoFormat__catchAll(JNIEnv *env, jstring mime, jint width, jint height)
{
    jobject ret_object = J4AC_android_media_MediaFormat__createVideoFormat(env, mime, width, height);
    if (J4A_ExceptionCheck__catchAll(env) || !ret_object) {
        return ((void*)0);
    }

    return ret_object;
}
