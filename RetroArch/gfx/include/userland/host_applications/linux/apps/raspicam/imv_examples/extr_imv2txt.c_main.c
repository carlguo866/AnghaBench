
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x_vector; int y_vector; int sad; } ;
typedef TYPE_1__ INLINE_MOTION_VECTOR ;
typedef int FILE ;


 int SEEK_END ;
 int SEEK_SET ;
 int atoi (char const*) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int *,char*,...) ;
 int fread (char*,long,int,int *) ;
 int fseek (int *,int ,int ) ;
 long ftell (int *) ;
 void* malloc (int) ;
 int memcpy (TYPE_1__*,char*,int) ;
 int printf (char*,...) ;

int main(int argc, const char **argv)
{
   if(argc!=5)
   {
      printf("usage: %s data.imv mbx mby out.dat\n",argv[0]);
      return 0;
   }
   int mbx=atoi(argv[2]);
   int mby=atoi(argv[3]);




   FILE *f = fopen(argv[1], "rb");
   fseek(f, 0, SEEK_END);
   long fsize = ftell(f);
   fseek(f, 0, SEEK_SET);
   char *buffer = malloc(fsize + 1);
   fread(buffer, fsize, 1, f);
   fclose(f);
   buffer[fsize] = 0;




   if(fsize<(mbx+1)*mby*4)
   {
      printf("File to short!\n");
      return 0;
   }
   INLINE_MOTION_VECTOR *imv;
   imv = malloc((mbx+1)*mby*sizeof(INLINE_MOTION_VECTOR));
   memcpy ( &imv[0], &buffer[0], (mbx+1)*mby*sizeof(INLINE_MOTION_VECTOR) );




   FILE *out = fopen(argv[4], "w");
   fprintf(out,"#x y u v sad\n");
   int i,j;
   for(j=0;j<mby; j++)
      for(i=0;i<mbx; i++)
   {
      fprintf(out,"%g %g %d %d %d\n",(i+0.5)*16.,(mby-j-0.5)*16.,-imv[i+(mbx+1)*j].x_vector,imv[i+(mbx+1)*j].y_vector,imv[i+(mbx+1)*j].sad);
   }
   fclose(out);
 return 0;

}
