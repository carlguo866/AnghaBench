
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;


 int memset (int *,int ,int) ;

__attribute__((used)) static void clear_block_c(int16_t *block)
{
    memset(block, 0, sizeof(int16_t) * 64);
}
