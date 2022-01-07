
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swirr ;
struct gpiohandle_data {int* values; } ;


 int GPIOHANDLE_REQUEST_OUTPUT ;
 int fflush (int ) ;
 int fprintf (int ,char*,...) ;
 int gpiotools_get_values (int,struct gpiohandle_data*) ;
 int gpiotools_release_linehandle (int) ;
 int gpiotools_request_linehandle (char const*,unsigned int*,int,int ,struct gpiohandle_data*,char*) ;
 int gpiotools_set_values (int,struct gpiohandle_data*) ;
 int memset (int**,int ,int) ;
 int sleep (int) ;
 int stdout ;

int hammer_device(const char *device_name, unsigned int *lines, int nlines,
    unsigned int loops)
{
 struct gpiohandle_data data;
 char swirr[] = "-\\|/";
 int fd;
 int ret;
 int i, j;
 unsigned int iteration = 0;

 memset(&data.values, 0, sizeof(data.values));
 ret = gpiotools_request_linehandle(device_name, lines, nlines,
        GPIOHANDLE_REQUEST_OUTPUT, &data,
        "gpio-hammer");
 if (ret < 0)
  goto exit_error;
 else
  fd = ret;

 ret = gpiotools_get_values(fd, &data);
 if (ret < 0)
  goto exit_close_error;

 fprintf(stdout, "Hammer lines [");
 for (i = 0; i < nlines; i++) {
  fprintf(stdout, "%d", lines[i]);
  if (i != (nlines - 1))
   fprintf(stdout, ", ");
 }
 fprintf(stdout, "] on %s, initial states: [", device_name);
 for (i = 0; i < nlines; i++) {
  fprintf(stdout, "%d", data.values[i]);
  if (i != (nlines - 1))
   fprintf(stdout, ", ");
 }
 fprintf(stdout, "]\n");


 j = 0;
 while (1) {

  for (i = 0; i < nlines; i++)
   data.values[i] = !data.values[i];

  ret = gpiotools_set_values(fd, &data);
  if (ret < 0)
   goto exit_close_error;


  ret = gpiotools_get_values(fd, &data);
  if (ret < 0)
   goto exit_close_error;

  fprintf(stdout, "[%c] ", swirr[j]);
  j++;
  if (j == sizeof(swirr)-1)
   j = 0;

  fprintf(stdout, "[");
  for (i = 0; i < nlines; i++) {
   fprintf(stdout, "%d: %d", lines[i], data.values[i]);
   if (i != (nlines - 1))
    fprintf(stdout, ", ");
  }
  fprintf(stdout, "]\r");
  fflush(stdout);
  sleep(1);
  iteration++;
  if (loops && iteration == loops)
   break;
 }
 fprintf(stdout, "\n");
 ret = 0;

exit_close_error:
 gpiotools_release_linehandle(fd);
exit_error:
 return ret;
}
