
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int opj_bio_t ;
typedef scalar_t__ OPJ_INT32 ;


 int opj_bio_write (int *,int,int) ;

__attribute__((used)) static void opj_t2_putcommacode(opj_bio_t *bio, OPJ_INT32 n)
{
    while (--n >= 0) {
        opj_bio_write(bio, 1, 1);
    }
    opj_bio_write(bio, 0, 1);
}
