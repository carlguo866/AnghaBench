
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_END ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fread (void*,unsigned int,int,int *) ;
 int free (void*) ;
 int fseek (int *,int ,int ) ;
 unsigned int ftell (int *) ;
 void* malloc (unsigned int) ;
 int printf (char*,...) ;
 int rewind (int *) ;

void * load_file(const char * filename)
{
 FILE * datafile = fopen(filename, "rb");
 unsigned int size;
 void * buffer = ((void*)0);

 if(datafile == ((void*)0))
 {
        printf("\n\nERROR: %s couldn't be opened!\n\n",filename);
        return ((void*)0);
    }

    fseek (datafile , 0 , SEEK_END);
 size = ftell (datafile);
 if(size == 0)
 {
        printf("\n\nERROR: Size of %s is 0!\n\n",filename);
        fclose(datafile);
        return ((void*)0);
    }
 rewind (datafile);
 buffer = malloc(size);
 if(buffer == ((void*)0))
 {
        printf("\n\nERROR: Not enought memory to load %s!\n\n",filename);
        fclose(datafile);
        return ((void*)0);
    }
 if(fread(buffer,size,1,datafile) != 1)
 {
        printf("\n\nERROR: Error while reading.\n\n");
        fclose(datafile);
  free(buffer);
        return ((void*)0);
    }

 fclose(datafile);

 return buffer;
}
