
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int OPJ_UINT32 ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int atoi (char*) ;
 char* strtok (char*,char*) ;

int parse_DA_values(char* inArg, unsigned int *DA_x0, unsigned int *DA_y0,
                    unsigned int *DA_x1, unsigned int *DA_y1)
{
    int it = 0;
    int values[4];
    char delims[] = ",";
    char *result = ((void*)0);
    result = strtok(inArg, delims);

    while ((result != ((void*)0)) && (it < 4)) {
        values[it] = atoi(result);
        result = strtok(((void*)0), delims);
        it++;
    }

    if (it != 4) {
        return EXIT_FAILURE;
    } else {
        *DA_x0 = (OPJ_UINT32)values[0];
        *DA_y0 = (OPJ_UINT32)values[1];
        *DA_x1 = (OPJ_UINT32)values[2];
        *DA_y1 = (OPJ_UINT32)values[3];
        return EXIT_SUCCESS;
    }
}
