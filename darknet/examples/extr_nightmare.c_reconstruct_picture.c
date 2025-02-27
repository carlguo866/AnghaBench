
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {float* input; float* delta; float* truth; int delta_gpu; int input_gpu; } ;
typedef TYPE_1__ network ;
struct TYPE_17__ {int outputs; int delta_gpu; int output_gpu; } ;
typedef TYPE_2__ layer ;
struct TYPE_18__ {int w; int h; int c; float* data; } ;
typedef TYPE_3__ image ;


 int axpy_cpu (int,float,float*,int,float*,int) ;
 int axpy_gpu (int,int,int ,int,int ,int) ;
 int backward_network (TYPE_1__*) ;
 int backward_network_gpu (TYPE_1__*) ;
 int constrain_image (TYPE_3__) ;
 int cuda_free (int ) ;
 int cuda_make_array (float*,int) ;
 int cuda_pull_array (int ,float*,int) ;
 int cuda_push_array (int ,float*,int) ;
 int forward_network (TYPE_1__*) ;
 int forward_network_gpu (TYPE_1__*) ;
 int free_image (TYPE_3__) ;
 TYPE_2__ get_network_output_layer (TYPE_1__*) ;
 float mag_array (float*,int) ;
 TYPE_3__ make_image (int,int,int) ;
 int printf (char*,float) ;
 int scal_cpu (int,float,float*,int) ;

void reconstruct_picture(network *net, float *features, image recon, image update, float rate, float momentum, float lambda, int smooth_size, int iters)
{
    int iter = 0;
    for (iter = 0; iter < iters; ++iter) {
        image delta = make_image(recon.w, recon.h, recon.c);
        net->input = recon.data;
        net->delta = delta.data;
        net->truth = features;

        forward_network(net);
        backward_network(net);



        axpy_cpu(recon.w*recon.h*recon.c, 1, delta.data, 1, update.data, 1);


        axpy_cpu(recon.w*recon.h*recon.c, rate, update.data, 1, recon.data, 1);
        scal_cpu(recon.w*recon.h*recon.c, momentum, update.data, 1);

        float mag = mag_array(delta.data, recon.w*recon.h*recon.c);
        printf("mag: %f\n", mag);


        constrain_image(recon);
        free_image(delta);
    }
}
