
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int spa_t ;
typedef enum zio_checksum { ____Placeholder_zio_checksum } zio_checksum ;
struct TYPE_2__ {int ci_flags; } ;


 int ASSERT (int) ;
 int ZCHECKSUM_FLAG_DEDUP ;
 int ZIO_CHECKSUM_FUNCTIONS ;
 int ZIO_CHECKSUM_INHERIT ;
 int ZIO_CHECKSUM_MASK ;
 int ZIO_CHECKSUM_OFF ;
 int ZIO_CHECKSUM_ON ;
 int ZIO_CHECKSUM_VERIFY ;
 int spa_dedup_checksum (int *) ;
 TYPE_1__* zio_checksum_table ;

enum zio_checksum
zio_checksum_dedup_select(spa_t *spa, enum zio_checksum child,
    enum zio_checksum parent)
{
 ASSERT((child & ZIO_CHECKSUM_MASK) < ZIO_CHECKSUM_FUNCTIONS);
 ASSERT((parent & ZIO_CHECKSUM_MASK) < ZIO_CHECKSUM_FUNCTIONS);
 ASSERT(parent != ZIO_CHECKSUM_INHERIT && parent != ZIO_CHECKSUM_ON);

 if (child == ZIO_CHECKSUM_INHERIT)
  return (parent);

 if (child == ZIO_CHECKSUM_ON)
  return (spa_dedup_checksum(spa));

 if (child == (ZIO_CHECKSUM_ON | ZIO_CHECKSUM_VERIFY))
  return (spa_dedup_checksum(spa) | ZIO_CHECKSUM_VERIFY);

 ASSERT((zio_checksum_table[child & ZIO_CHECKSUM_MASK].ci_flags &
     ZCHECKSUM_FLAG_DEDUP) ||
     (child & ZIO_CHECKSUM_VERIFY) || child == ZIO_CHECKSUM_OFF);

 return (child);
}
