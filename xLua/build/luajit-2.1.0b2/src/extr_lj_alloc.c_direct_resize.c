
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* mchunkptr ;
struct TYPE_8__ {int head; } ;
struct TYPE_7__ {size_t prev_foot; size_t head; } ;


 scalar_t__ CALL_MREMAP (char*,size_t,size_t,int ) ;
 int CALL_MREMAP_MV ;
 scalar_t__ CHUNK_ALIGN_MASK ;
 size_t CINUSE_BIT ;
 char* CMFAIL ;
 int DEFAULT_GRANULARITY ;
 size_t DIRECT_FOOT_PAD ;
 int FENCEPOST_HEAD ;
 size_t IS_DIRECT_BIT ;
 scalar_t__ SIX_SIZE_T_SIZES ;
 size_t SIZE_T_SIZE ;
 TYPE_5__* chunk_plus_offset (TYPE_1__*,size_t) ;
 size_t chunksize (TYPE_1__*) ;
 scalar_t__ is_small (size_t) ;
 size_t mmap_align (scalar_t__) ;

__attribute__((used)) static mchunkptr direct_resize(mchunkptr oldp, size_t nb)
{
  size_t oldsize = chunksize(oldp);
  if (is_small(nb))
    return ((void*)0);

  if (oldsize >= nb + SIZE_T_SIZE &&
      (oldsize - nb) <= (DEFAULT_GRANULARITY >> 1)) {
    return oldp;
  } else {
    size_t offset = oldp->prev_foot & ~IS_DIRECT_BIT;
    size_t oldmmsize = oldsize + offset + DIRECT_FOOT_PAD;
    size_t newmmsize = mmap_align(nb + SIX_SIZE_T_SIZES + CHUNK_ALIGN_MASK);
    char *cp = (char *)CALL_MREMAP((char *)oldp - offset,
       oldmmsize, newmmsize, CALL_MREMAP_MV);
    if (cp != CMFAIL) {
      mchunkptr newp = (mchunkptr)(cp + offset);
      size_t psize = newmmsize - offset - DIRECT_FOOT_PAD;
      newp->head = psize|CINUSE_BIT;
      chunk_plus_offset(newp, psize)->head = FENCEPOST_HEAD;
      chunk_plus_offset(newp, psize+SIZE_T_SIZE)->head = 0;
      return newp;
    }
  }
  return ((void*)0);
}
