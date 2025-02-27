
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_number_mapping {int member_0; int member_1; int member_2; int member_3; } ;
struct fingerprint {int dummy; } ;
struct blame_origin {struct fingerprint* fingerprints; } ;


 int CERTAINTY_NOT_CALCULATED ;
 int free (int*) ;
 int fuzzy_find_matching_lines_recurse (int,int,int,int,struct fingerprint*,struct fingerprint*,int*,int*,int*,int*,int,int,struct line_number_mapping*) ;
 int* xcalloc (int,int) ;

__attribute__((used)) static int *fuzzy_find_matching_lines(struct blame_origin *parent,
          struct blame_origin *target,
          int tlno, int parent_slno, int same,
          int parent_len)
{


 int start_a = parent_slno;
 int length_a = parent_len;
 int start_b = tlno;
 int length_b = same - tlno;

 struct line_number_mapping map_line_number_in_b_to_a = {
  start_a, length_a, start_b, length_b
 };

 struct fingerprint *fingerprints_a = parent->fingerprints;
 struct fingerprint *fingerprints_b = target->fingerprints;

 int i, *result, *second_best_result,
  *certainties, *similarities, similarity_count;
 int max_search_distance_a = 10, max_search_distance_b;

 if (length_a <= 0)
  return ((void*)0);

 if (max_search_distance_a >= length_a)
  max_search_distance_a = length_a ? length_a - 1 : 0;

 max_search_distance_b = ((2 * max_search_distance_a + 1) * length_b
     - 1) / length_a;

 result = xcalloc(sizeof(int), length_b);
 second_best_result = xcalloc(sizeof(int), length_b);
 certainties = xcalloc(sizeof(int), length_b);


 similarity_count = length_b * (max_search_distance_a * 2 + 1);
 similarities = xcalloc(sizeof(int), similarity_count);

 for (i = 0; i < length_b; ++i) {
  result[i] = -1;
  second_best_result[i] = -1;
  certainties[i] = CERTAINTY_NOT_CALCULATED;
 }

 for (i = 0; i < similarity_count; ++i)
  similarities[i] = -1;

 fuzzy_find_matching_lines_recurse(start_a, start_b,
       length_a, length_b,
       fingerprints_a + start_a,
       fingerprints_b + start_b,
       similarities,
       certainties,
       second_best_result,
       result,
       max_search_distance_a,
       max_search_distance_b,
       &map_line_number_in_b_to_a);

 free(similarities);
 free(certainties);
 free(second_best_result);

 return result;
}
