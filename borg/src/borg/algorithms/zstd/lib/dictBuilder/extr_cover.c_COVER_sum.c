
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
size_t COVER_sum(const size_t *samplesSizes, unsigned nbSamples) {
  size_t sum = 0;
  unsigned i;
  for (i = 0; i < nbSamples; ++i) {
    sum += samplesSizes[i];
  }
  return sum;
}
