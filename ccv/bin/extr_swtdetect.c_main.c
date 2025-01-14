
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_6__ {int x; int y; int width; int height; } ;
typedef TYPE_1__ ccv_rect_t ;
typedef int ccv_dense_matrix_t ;
struct TYPE_7__ {int rnum; } ;
typedef TYPE_2__ ccv_array_t ;
typedef int FILE ;


 int CCV_IO_ANY_FILE ;
 int CCV_IO_GRAY ;
 int ccv_array_free (TYPE_2__*) ;
 scalar_t__ ccv_array_get (TYPE_2__*,int) ;
 int ccv_drain_cache () ;
 int ccv_enable_default_cache () ;
 int ccv_matrix_free (int *) ;
 int ccv_read (char*,int **,int) ;
 int ccv_swt_default_params ;
 TYPE_2__* ccv_swt_detect_words (int *,int ) ;
 int chdir (char*) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 unsigned int get_current_time () ;
 int getline (char**,size_t*,int *) ;
 scalar_t__ isspace (char) ;
 scalar_t__ malloc (size_t) ;
 int printf (char*,...) ;

int main(int argc, char** argv)
{
 ccv_enable_default_cache();
 ccv_dense_matrix_t* image = 0;
 ccv_read(argv[1], &image, CCV_IO_GRAY | CCV_IO_ANY_FILE);
 if (image != 0)
 {
  unsigned int elapsed_time = get_current_time();
  ccv_array_t* words = ccv_swt_detect_words(image, ccv_swt_default_params);
  elapsed_time = get_current_time() - elapsed_time;
  if (words)
  {
   int i;
   for (i = 0; i < words->rnum; i++)
   {
    ccv_rect_t* rect = (ccv_rect_t*)ccv_array_get(words, i);
    printf("%d %d %d %d\n", rect->x, rect->y, rect->width, rect->height);
   }
   printf("total : %d in time %dms\n", words->rnum, elapsed_time);
   ccv_array_free(words);
  }
  ccv_matrix_free(image);
 } else {
  FILE* r = fopen(argv[1], "rt");
  if (argc == 3)
   chdir(argv[2]);
  if(r)
  {
   size_t len = 1024;
   char* file = (char*)malloc(len);
   ssize_t read;
   while((read = getline(&file, &len, r)) != -1)
   {
    while(read > 1 && isspace(file[read - 1]))
     read--;
    file[read] = 0;
    image = 0;
    printf("%s\n", file);
    ccv_read(file, &image, CCV_IO_GRAY | CCV_IO_ANY_FILE);
    ccv_array_t* words = ccv_swt_detect_words(image, ccv_swt_default_params);
    int i;
    for (i = 0; i < words->rnum; i++)
    {
     ccv_rect_t* rect = (ccv_rect_t*)ccv_array_get(words, i);
     printf("%d %d %d %d\n", rect->x, rect->y, rect->width, rect->height);
    }
    ccv_array_free(words);
    ccv_matrix_free(image);
   }
   free(file);
   fclose(r);
  }
 }
 ccv_drain_cache();
 return 0;
}
