
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item {scalar_t__* columns; } ;


 size_t COLUMN_NODE ;
 int path_compare (scalar_t__,scalar_t__) ;

__attribute__((used)) static int compare_item(const struct item *a, const struct item *b) {
        if (a->columns[COLUMN_NODE] == b->columns[COLUMN_NODE])
                return 0;
        if (!a->columns[COLUMN_NODE])
                return 1;
        if (!b->columns[COLUMN_NODE])
                return -1;

        return path_compare(a->columns[COLUMN_NODE], b->columns[COLUMN_NODE]);
}
