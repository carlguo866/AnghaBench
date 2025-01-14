
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_48__ TYPE_9__ ;
typedef struct TYPE_47__ TYPE_8__ ;
typedef struct TYPE_46__ TYPE_7__ ;
typedef struct TYPE_45__ TYPE_6__ ;
typedef struct TYPE_44__ TYPE_5__ ;
typedef struct TYPE_43__ TYPE_4__ ;
typedef struct TYPE_42__ TYPE_3__ ;
typedef struct TYPE_41__ TYPE_2__ ;
typedef struct TYPE_40__ TYPE_1__ ;
typedef struct TYPE_39__ TYPE_19__ ;
typedef struct TYPE_38__ TYPE_18__ ;
typedef struct TYPE_37__ TYPE_17__ ;
typedef struct TYPE_36__ TYPE_16__ ;
typedef struct TYPE_35__ TYPE_15__ ;
typedef struct TYPE_34__ TYPE_14__ ;
typedef struct TYPE_33__ TYPE_13__ ;
typedef struct TYPE_32__ TYPE_12__ ;
typedef struct TYPE_31__ TYPE_11__ ;
typedef struct TYPE_30__ TYPE_10__ ;


typedef int uint16_t ;
typedef int sqlite3_stmt ;
typedef int sqlite3 ;
typedef int layer_params_qs ;
typedef int layer_data_qs ;
typedef int convnet_params_mean_activity_qs ;
typedef int convnet_params_input_qs ;
struct TYPE_35__ {int height; int width; } ;
typedef TYPE_15__ ccv_size_t ;
struct TYPE_43__ {int height; int width; } ;
struct TYPE_36__ {int channels; TYPE_6__* mean_activity; TYPE_4__ input; TYPE_17__* layers; } ;
typedef TYPE_16__ ccv_convnet_t ;
struct TYPE_41__ {int count; } ;
struct TYPE_40__ {int count; } ;
struct TYPE_42__ {TYPE_2__ full_connect; TYPE_1__ convolutional; } ;
struct TYPE_37__ {int wnum; int type; TYPE_3__ net; int bias; int w; } ;
typedef TYPE_17__ ccv_convnet_layer_t ;
struct TYPE_33__ {int size; void* beta; void* alpha; void* kappa; } ;
struct TYPE_32__ {int strides; int border; int size; } ;
struct TYPE_31__ {int count; int relu; } ;
struct TYPE_30__ {int rows; int cols; int channels; int partition; int count; int strides; int border; } ;
struct TYPE_34__ {TYPE_13__ rnorm; TYPE_12__ pool; TYPE_11__ full_connect; TYPE_10__ convolutional; } ;
struct TYPE_47__ {int count; } ;
struct TYPE_46__ {int rows; int cols; int channels; int partition; } ;
struct TYPE_48__ {TYPE_8__ node; TYPE_7__ matrix; } ;
struct TYPE_38__ {int type; TYPE_14__ output; scalar_t__ glorot; scalar_t__ bias; TYPE_9__ input; } ;
typedef TYPE_18__ ccv_convnet_layer_param_t ;
struct TYPE_39__ {int rnum; } ;
typedef TYPE_19__ ccv_array_t ;
struct TYPE_44__ {int f32; } ;
struct TYPE_45__ {TYPE_5__ data; } ;







 scalar_t__ SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 int assert (int) ;
 int ccfree (void*) ;
 scalar_t__ ccmalloc (int) ;
 int ccv_array_free (TYPE_19__*) ;
 scalar_t__ ccv_array_get (TYPE_19__*,int ) ;
 TYPE_19__* ccv_array_new (int,int,int ) ;
 int ccv_array_push (TYPE_19__*,TYPE_18__*) ;
 TYPE_16__* ccv_convnet_new (int,TYPE_15__,TYPE_18__*,int ) ;
 int ccv_half_precision_to_float (int *,float*,int) ;
 TYPE_15__ ccv_size (int ,int ) ;
 int memcpy (int ,void const*,int) ;
 int sqlite3_close (int *) ;
 void const* sqlite3_column_blob (int *,int) ;
 int sqlite3_column_bytes (int *,int) ;
 void* sqlite3_column_double (int *,int) ;
 int sqlite3_column_int (int *,int) ;
 int sqlite3_finalize (int *) ;
 scalar_t__ sqlite3_open (char const*,int **) ;
 scalar_t__ sqlite3_prepare_v2 (int *,char const*,int,int **,int ) ;
 scalar_t__ sqlite3_step (int *) ;

ccv_convnet_t* ccv_convnet_read(int use_cwc_accel, const char* filename)
{
 sqlite3* db = 0;
 if (SQLITE_OK == sqlite3_open(filename, &db))
 {
  ccv_convnet_t* convnet = 0;
  sqlite3_stmt* layer_params_stmt = 0;

  const char layer_params_qs[] =
   "SELECT type, "
   "input_matrix_rows, input_matrix_cols, input_matrix_channels, input_matrix_partition, input_node_count, "
   "output_rows, output_cols, output_channels, output_partition, output_count, output_strides, output_border, "
   "output_size, output_kappa, output_alpha, output_beta, output_relu FROM layer_params ORDER BY layer ASC;";
  if (SQLITE_OK == sqlite3_prepare_v2(db, layer_params_qs, sizeof(layer_params_qs), &layer_params_stmt, 0))
  {
   ccv_array_t* layer_params = ccv_array_new(sizeof(ccv_convnet_layer_param_t), 3, 0);
   while (sqlite3_step(layer_params_stmt) == SQLITE_ROW)
   {
    ccv_convnet_layer_param_t layer_param;
    layer_param.type = sqlite3_column_int(layer_params_stmt, 0);
    layer_param.input.matrix.rows = sqlite3_column_int(layer_params_stmt, 1);
    layer_param.input.matrix.cols = sqlite3_column_int(layer_params_stmt, 2);
    layer_param.input.matrix.channels = sqlite3_column_int(layer_params_stmt, 3);
    layer_param.input.matrix.partition = sqlite3_column_int(layer_params_stmt, 4);
    layer_param.input.node.count = sqlite3_column_int(layer_params_stmt, 5);
    layer_param.bias = layer_param.glorot = 0;
    switch (layer_param.type)
    {
     case 131:
      layer_param.output.convolutional.rows = sqlite3_column_int(layer_params_stmt, 6);
      layer_param.output.convolutional.cols = sqlite3_column_int(layer_params_stmt, 7);
      layer_param.output.convolutional.channels = sqlite3_column_int(layer_params_stmt, 8);
      layer_param.output.convolutional.partition = sqlite3_column_int(layer_params_stmt, 9);
      layer_param.output.convolutional.count = sqlite3_column_int(layer_params_stmt, 10);
      layer_param.output.convolutional.strides = sqlite3_column_int(layer_params_stmt, 11);
      layer_param.output.convolutional.border = sqlite3_column_int(layer_params_stmt, 12);
      break;
     case 130:
      layer_param.output.full_connect.count = sqlite3_column_int(layer_params_stmt, 10);
      layer_param.output.full_connect.relu = sqlite3_column_int(layer_params_stmt, 17);
      break;
     case 128:
     case 132:
      layer_param.output.pool.strides = sqlite3_column_int(layer_params_stmt, 11);
      layer_param.output.pool.border = sqlite3_column_int(layer_params_stmt, 12);
      layer_param.output.pool.size = sqlite3_column_int(layer_params_stmt, 13);
      break;
     case 129:
      layer_param.output.rnorm.size = sqlite3_column_int(layer_params_stmt, 13);
      layer_param.output.rnorm.kappa = sqlite3_column_double(layer_params_stmt, 14);
      layer_param.output.rnorm.alpha = sqlite3_column_double(layer_params_stmt, 15);
      layer_param.output.rnorm.beta = sqlite3_column_double(layer_params_stmt, 16);
      break;
    }
    ccv_array_push(layer_params, &layer_param);
   }
   sqlite3_finalize(layer_params_stmt);
   sqlite3_stmt* convnet_params_input_stmt = 0;

   const char convnet_params_input_qs[] =
    "SELECT input_height, input_width FROM convnet_params WHERE convnet = 0;";
   ccv_size_t input = ccv_size(0, 0);
   if (SQLITE_OK == sqlite3_prepare_v2(db, convnet_params_input_qs, sizeof(convnet_params_input_qs), &convnet_params_input_stmt, 0))
   {
    if (sqlite3_step(convnet_params_input_stmt) == SQLITE_ROW)
    {
     input.height = sqlite3_column_int(convnet_params_input_stmt, 0);
     input.width = sqlite3_column_int(convnet_params_input_stmt, 1);
    }
    sqlite3_finalize(convnet_params_input_stmt);
   }
   assert(input.height != 0 && input.width != 0);
   convnet = ccv_convnet_new(use_cwc_accel, input, (ccv_convnet_layer_param_t*)ccv_array_get(layer_params, 0), layer_params->rnum);
   ccv_array_free(layer_params);

   sqlite3_stmt* layer_data_stmt = 0;
   const char layer_data_qs[] =
    "SELECT layer, weight, bias, half_precision FROM layer_data;";
   if (SQLITE_OK == sqlite3_prepare_v2(db, layer_data_qs, sizeof(layer_data_qs), &layer_data_stmt, 0))
   {
    while (sqlite3_step(layer_data_stmt) == SQLITE_ROW)
    {
     ccv_convnet_layer_t* layer = convnet->layers + sqlite3_column_int(layer_data_stmt, 0);
     int half_precision = sqlite3_column_int(layer_data_stmt, 3);
     int wnum = sqlite3_column_bytes(layer_data_stmt, 1) / (half_precision ? sizeof(uint16_t) : sizeof(float));

     if (wnum == layer->wnum)
     {
      const void* w = sqlite3_column_blob(layer_data_stmt, 1);
      if (half_precision)
      {
       float* f = (float*)ccmalloc(sizeof(float) * layer->wnum);
       ccv_half_precision_to_float((uint16_t*)w, f, layer->wnum);
       w = f;
      }
      switch (layer->type)
      {
       case 131:
        memcpy(layer->w, w, sizeof(float) * layer->wnum);
        break;
       case 130:
        memcpy(layer->w, w, sizeof(float) * layer->wnum);
        break;
      }
      if (half_precision)
       ccfree((void*)w);
     }
     int bnum = sqlite3_column_bytes(layer_data_stmt, 2) / (half_precision ? sizeof(uint16_t) : sizeof(float));

     if (bnum == (layer->type == 131 ? layer->net.convolutional.count : layer->net.full_connect.count))
     {
      const void* bias = sqlite3_column_blob(layer_data_stmt, 2);
      if (half_precision)
      {
       float* f = (float*)ccmalloc(sizeof(float) * (layer->type == 131 ? layer->net.convolutional.count : layer->net.full_connect.count));
       ccv_half_precision_to_float((uint16_t*)bias, f, layer->type == 131 ? layer->net.convolutional.count : layer->net.full_connect.count);
       bias = f;
      }
      switch (layer->type)
      {
       case 131:
        memcpy(layer->bias, bias, sizeof(float) * layer->net.convolutional.count);
        break;
       case 130:
        memcpy(layer->bias, bias, sizeof(float) * layer->net.full_connect.count);
        break;
      }
      if (half_precision)
       ccfree((void*)bias);
     }
    }
    sqlite3_finalize(layer_data_stmt);
   }
   sqlite3_stmt* convnet_params_mean_activity_stmt = 0;

   const char convnet_params_mean_activity_qs[] =
    "SELECT mean_activity FROM convnet_params WHERE convnet = 0;";
   if (SQLITE_OK == sqlite3_prepare_v2(db, convnet_params_mean_activity_qs, sizeof(convnet_params_mean_activity_qs), &convnet_params_mean_activity_stmt, 0))
   {
    if (sqlite3_step(convnet_params_mean_activity_stmt) == SQLITE_ROW)
    {
     int elems = sqlite3_column_bytes(convnet_params_mean_activity_stmt, 0) / sizeof(float);
     if (elems == convnet->input.height * convnet->input.width * convnet->channels)
      memcpy(convnet->mean_activity->data.f32, sqlite3_column_blob(convnet_params_mean_activity_stmt, 0), sizeof(float) * elems);
    }
    sqlite3_finalize(convnet_params_mean_activity_stmt);
   }
  }
  sqlite3_close(db);
  return convnet;
 }
 return 0;
}
