
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* key; struct TYPE_5__* value; } ;
typedef TYPE_1__ header_t ;


 int free (TYPE_1__*) ;
 scalar_t__ malloc (int) ;

__attribute__((used)) static header_t *realloc_headers(header_t *headers, int new_size) {
  if(headers) {
    for(header_t *header = headers; header->key; header++) {
      free(header->value);
      free(header->key);
    }
    free(headers);
  }
  if(!new_size)
    return ((void*)0);
  return (header_t *)malloc(sizeof(header_t) * (new_size + 1));
}
