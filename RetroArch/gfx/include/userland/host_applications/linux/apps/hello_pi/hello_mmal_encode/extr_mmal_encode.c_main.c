
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int callback; } ;


 int MMAL_COMPONENT_DEFAULT_IMAGE_ENCODER ;
 int MMAL_ENCODING_BMP ;
 int MMAL_ENCODING_GIF ;
 int MMAL_ENCODING_JPEG ;
 int MMAL_ENCODING_PNG ;
 scalar_t__ MMAL_SUCCESS ;
 scalar_t__ VCOS_SUCCESS ;
 int bcm_host_init () ;
 TYPE_1__* encoder ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int mmalCallback ;
 int mmal_encode_test (int ,char*) ;
 scalar_t__ mmal_wrapper_create (TYPE_1__**,int ) ;
 int mmal_wrapper_destroy (TYPE_1__*) ;
 int sem ;
 int stderr ;
 scalar_t__ vcos_semaphore_create (int *,char*,int ) ;
 int vcos_semaphore_delete (int *) ;

int main(int argc, const char** argv)
{
   bcm_host_init();

   if (vcos_semaphore_create(&sem, "encoder sem", 0) != VCOS_SUCCESS) {
      fprintf(stderr, "Failed to create semaphore\n");
      exit(1);
   }

   if (mmal_wrapper_create(&encoder, MMAL_COMPONENT_DEFAULT_IMAGE_ENCODER)
       != MMAL_SUCCESS) {
      fprintf(stderr, "Failed to create mmal component\n");
      exit(1);
   }
   encoder->callback = mmalCallback;


   mmal_encode_test(MMAL_ENCODING_PNG, "out.png");
   mmal_encode_test(MMAL_ENCODING_JPEG, "out.jpg");
   mmal_encode_test(MMAL_ENCODING_GIF, "out.gif");
   mmal_encode_test(MMAL_ENCODING_BMP, "out.bmp");

   mmal_wrapper_destroy(encoder);
   vcos_semaphore_delete(&sem);

   return 0;
}
