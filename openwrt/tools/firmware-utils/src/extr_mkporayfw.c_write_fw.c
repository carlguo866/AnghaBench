
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int FILE ;


 int DBG (char*,int ) ;
 int ERRS (char*,...) ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 scalar_t__ errno ;
 int fclose (int *) ;
 int fflush (int *) ;
 int * fopen (int ,char*) ;
 int fwrite (int *,int,int,int *) ;
 int ofname ;
 int unlink (int ) ;

__attribute__((used)) static int write_fw(uint8_t *data, int len)
{
 FILE *f;
 int ret = EXIT_FAILURE;

 f = fopen(ofname, "wb");
 if (f == ((void*)0)) {
  ERRS("could not open \"%s\" for writing", ofname);
  goto out;
 }

 errno = 0;
 fwrite(data, len, 1, f);
 if (errno) {
  ERRS("unable to write output file");
  goto out_flush;
 }

 DBG("firmware file \"%s\" completed", ofname);

 ret = EXIT_SUCCESS;

 out_flush:
 fflush(f);
 fclose(f);
 if (ret != EXIT_SUCCESS) {
  unlink(ofname);
 }
 out:
 return ret;
}
