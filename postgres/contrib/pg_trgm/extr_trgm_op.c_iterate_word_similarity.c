
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef float float4 ;
typedef int TrgmBound ;


 int Assert (int ) ;
 float CALCSML (int,int,int) ;
 float Max (float,float) ;
 int TRGM_BOUND_LEFT ;
 int TRGM_BOUND_RIGHT ;
 int WORD_SIMILARITY_CHECK_ONLY ;
 int WORD_SIMILARITY_STRICT ;
 int memset (int*,int,int) ;
 scalar_t__ palloc (int) ;
 int pfree (int*) ;
 double strict_word_similarity_threshold ;
 double word_similarity_threshold ;

__attribute__((used)) static float4
iterate_word_similarity(int *trg2indexes,
      bool *found,
      int ulen1,
      int len2,
      int len,
      uint8 flags,
      TrgmBound *bounds)
{
 int *lastpos,
    i,
    ulen2 = 0,
    count = 0,
    upper = -1,
    lower;
 float4 smlr_cur,
    smlr_max = 0.0f;
 double threshold;

 Assert(bounds || !(flags & WORD_SIMILARITY_STRICT));


 threshold = (flags & WORD_SIMILARITY_STRICT) ?
  strict_word_similarity_threshold :
  word_similarity_threshold;






 lower = (flags & WORD_SIMILARITY_STRICT) ? 0 : -1;


 lastpos = (int *) palloc(sizeof(int) * len);
 memset(lastpos, -1, sizeof(int) * len);

 for (i = 0; i < len2; i++)
 {

  int trgindex = trg2indexes[i];


  if (lower >= 0 || found[trgindex])
  {
   if (lastpos[trgindex] < 0)
   {
    ulen2++;
    if (found[trgindex])
     count++;
   }
   lastpos[trgindex] = i;
  }






  if ((flags & WORD_SIMILARITY_STRICT) ? (bounds[i] & TRGM_BOUND_RIGHT)
   : found[trgindex])
  {
   int prev_lower,
      tmp_ulen2,
      tmp_lower,
      tmp_count;

   upper = i;
   if (lower == -1)
   {
    lower = i;
    ulen2 = 1;
   }

   smlr_cur = CALCSML(count, ulen1, ulen2);


   tmp_count = count;
   tmp_ulen2 = ulen2;
   prev_lower = lower;
   for (tmp_lower = lower; tmp_lower <= upper; tmp_lower++)
   {
    float smlr_tmp;
    int tmp_trgindex;






    if (!(flags & WORD_SIMILARITY_STRICT)
     || (bounds[tmp_lower] & TRGM_BOUND_LEFT))
    {
     smlr_tmp = CALCSML(tmp_count, ulen1, tmp_ulen2);
     if (smlr_tmp > smlr_cur)
     {
      smlr_cur = smlr_tmp;
      ulen2 = tmp_ulen2;
      lower = tmp_lower;
      count = tmp_count;
     }






     if ((flags & WORD_SIMILARITY_CHECK_ONLY)
      && smlr_cur >= threshold)
      break;
    }

    tmp_trgindex = trg2indexes[tmp_lower];
    if (lastpos[tmp_trgindex] == tmp_lower)
    {
     tmp_ulen2--;
     if (found[tmp_trgindex])
      tmp_count--;
    }
   }

   smlr_max = Max(smlr_max, smlr_cur);





   if ((flags & WORD_SIMILARITY_CHECK_ONLY) && smlr_max >= threshold)
    break;

   for (tmp_lower = prev_lower; tmp_lower < lower; tmp_lower++)
   {
    int tmp_trgindex;

    tmp_trgindex = trg2indexes[tmp_lower];
    if (lastpos[tmp_trgindex] == tmp_lower)
     lastpos[tmp_trgindex] = -1;
   }
  }
 }

 pfree(lastpos);

 return smlr_max;
}
