
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * data; } ;
struct key {TYPE_1__ payload; } ;


 int kzfree (int ) ;

__attribute__((used)) static void trusted_destroy(struct key *key)
{
 kzfree(key->payload.data[0]);
}
