
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hash_key_t ;


 int MATCH_BLOCKSIZE ;

__attribute__((used)) static hash_key_t
hash_key(const char *data)
{
  const unsigned char *input = (const unsigned char *)data;
  const unsigned char *last = input + MATCH_BLOCKSIZE;

  hash_key_t s1 = 0;
  hash_key_t s2 = 0;

  for (; input < last; input += 8)
    {
      s1 += input[0]; s2 += s1;
      s1 += input[1]; s2 += s1;
      s1 += input[2]; s2 += s1;
      s1 += input[3]; s2 += s1;
      s1 += input[4]; s2 += s1;
      s1 += input[5]; s2 += s1;
      s1 += input[6]; s2 += s1;
      s1 += input[7]; s2 += s1;
    }

  return s2 * 0x10000 + s1;
}
