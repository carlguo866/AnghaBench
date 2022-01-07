
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LodePNGInfo ;


 int CERROR_BREAK (unsigned int,int) ;
 unsigned int lodepng_add_text (int *,char*,char*) ;
 int lodepng_free (char*) ;
 scalar_t__ lodepng_malloc (unsigned int) ;

__attribute__((used)) static unsigned readChunk_tEXt(LodePNGInfo* info, const unsigned char* data, size_t chunkLength)
{
  unsigned error = 0;
  char *key = 0, *str = 0;
  unsigned i;

  while(!error)
  {
    unsigned length, string2_begin;

    length = 0;
    while(length < chunkLength && data[length] != 0) length++;


    if(length < 1 || length > 79) CERROR_BREAK(error, 89);

    key = (char*)lodepng_malloc(length + 1);
    if(!key) CERROR_BREAK(error, 83);

    key[length] = 0;
    for(i = 0; i < length; i++) key[i] = data[i];

    string2_begin = length + 1;

    length = chunkLength < string2_begin ? 0 : chunkLength - string2_begin;
    str = (char*)lodepng_malloc(length + 1);
    if(!str) CERROR_BREAK(error, 83);

    str[length] = 0;
    for(i = 0; i < length; i++) str[i] = data[string2_begin + i];

    error = lodepng_add_text(info, key, str);

    break;
  }

  lodepng_free(key);
  lodepng_free(str);

  return error;
}
