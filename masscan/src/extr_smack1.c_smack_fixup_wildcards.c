
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ transition_t ;
struct SmackPattern {size_t pattern_length; char* pattern; int is_wildcards; } ;
struct SMACK {size_t m_pattern_count; size_t row_shift; size_t* char_to_symbol; scalar_t__* table; scalar_t__ is_anchor_begin; struct SmackPattern** m_pattern_list; } ;


 int smack_search_next (struct SMACK*,unsigned int*,char*,unsigned int*,unsigned int) ;

__attribute__((used)) static void
smack_fixup_wildcards(struct SMACK *smack)
{
    size_t i;

    for (i=0; i<smack->m_pattern_count; i++) {
        size_t j;
        struct SmackPattern *pat = smack->m_pattern_list[i];


        if (!pat->is_wildcards)
            continue;


        for (j=0; j<pat->pattern_length; j++) {
            unsigned row = 0;
            unsigned offset = 0;
            size_t row_size = ((size_t)1 << smack->row_shift);
            transition_t *table;
            transition_t next_pattern;
            transition_t base_state = (smack->is_anchor_begin?1:0);
            size_t k;


            if (pat->pattern[j] != '*')
                continue;


            while (offset < j)
                smack_search_next(smack, &row, pat->pattern, &offset, (unsigned)j);

            row = row & 0xFFFFFF;
            table = smack->table + (row << smack->row_shift);
            next_pattern = table[smack->char_to_symbol['*']];

            for (k=0; k<row_size; k++) {
                if (table[k] == base_state)
                    table[k] = next_pattern;
            }
        }
    }

}
