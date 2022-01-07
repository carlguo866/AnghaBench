
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* key; char* value; } ;
typedef TYPE_1__ AVDictionaryEntry ;
typedef int AVDictionary ;


 int AV_DICT_APPEND ;
 int AV_DICT_DONT_OVERWRITE ;
 int AV_DICT_DONT_STRDUP_KEY ;
 int AV_DICT_DONT_STRDUP_VAL ;
 int AV_DICT_IGNORE_SUFFIX ;
 int av_dict_free (int **) ;
 TYPE_1__* av_dict_get (int *,char*,TYPE_1__*,int ) ;
 int av_dict_get_string (int *,char**,char,char) ;
 int av_dict_set (int **,char*,char*,int) ;
 int av_dict_set_int (int **,char*,int,int) ;
 int av_freep (char**) ;
 char* av_strdup (char*) ;
 int printf (char*,...) ;
 int test_separators (int *,char,char) ;

int main(void)
{
    AVDictionary *dict = ((void*)0);
    AVDictionaryEntry *e;
    char *buffer = ((void*)0);

    printf("Testing av_dict_get_string() and av_dict_parse_string()\n");
    av_dict_get_string(dict, &buffer, '=', ',');
    printf("%s\n", buffer);
    av_freep(&buffer);
    av_dict_set(&dict, "aaa", "aaa", 0);
    av_dict_set(&dict, "b,b", "bbb", 0);
    av_dict_set(&dict, "c=c", "ccc", 0);
    av_dict_set(&dict, "ddd", "d,d", 0);
    av_dict_set(&dict, "eee", "e=e", 0);
    av_dict_set(&dict, "f,f", "f=f", 0);
    av_dict_set(&dict, "g=g", "g,g", 0);
    test_separators(dict, ',', '=');
    av_dict_free(&dict);
    av_dict_set(&dict, "aaa", "aaa", 0);
    av_dict_set(&dict, "bbb", "bbb", 0);
    av_dict_set(&dict, "ccc", "ccc", 0);
    av_dict_set(&dict, "\\,=\'\"", "\\,=\'\"", 0);
    test_separators(dict, '"', '=');
    test_separators(dict, '\'', '=');
    test_separators(dict, ',', '"');
    test_separators(dict, ',', '\'');
    test_separators(dict, '\'', '"');
    test_separators(dict, '"', '\'');
    av_dict_free(&dict);

    printf("\nTesting av_dict_set()\n");
    av_dict_set(&dict, "a", "a", 0);
    av_dict_set(&dict, "b", av_strdup("b"), AV_DICT_DONT_STRDUP_VAL);
    av_dict_set(&dict, av_strdup("c"), "c", AV_DICT_DONT_STRDUP_KEY);
    av_dict_set(&dict, av_strdup("d"), av_strdup("d"), AV_DICT_DONT_STRDUP_KEY | AV_DICT_DONT_STRDUP_VAL);
    av_dict_set(&dict, "e", "e", AV_DICT_DONT_OVERWRITE);
    av_dict_set(&dict, "e", "f", AV_DICT_DONT_OVERWRITE);
    av_dict_set(&dict, "f", "f", 0);
    av_dict_set(&dict, "f", ((void*)0), 0);
    av_dict_set(&dict, "ff", "f", 0);
    av_dict_set(&dict, "ff", "f", AV_DICT_APPEND);
    e = ((void*)0);
    while ((e = av_dict_get(dict, "", e, AV_DICT_IGNORE_SUFFIX)))
        printf("%s %s\n", e->key, e->value);
    av_dict_free(&dict);

    av_dict_set(&dict, ((void*)0), "a", 0);
    av_dict_set(&dict, ((void*)0), "b", 0);
    av_dict_get(dict, ((void*)0), ((void*)0), 0);
    e = ((void*)0);
    while ((e = av_dict_get(dict, "", e, AV_DICT_IGNORE_SUFFIX)))
        printf("'%s' '%s'\n", e->key, e->value);
    av_dict_free(&dict);



    printf("\nTesting av_dict_set_int()\n");
    av_dict_set_int(&dict, "1", 1, AV_DICT_DONT_STRDUP_VAL);
    av_dict_set_int(&dict, av_strdup("2"), 2, AV_DICT_DONT_STRDUP_KEY);
    av_dict_set_int(&dict, av_strdup("3"), 3, AV_DICT_DONT_STRDUP_KEY | AV_DICT_DONT_STRDUP_VAL);
    av_dict_set_int(&dict, "4", 4, 0);
    av_dict_set_int(&dict, "5", 5, AV_DICT_DONT_OVERWRITE);
    av_dict_set_int(&dict, "5", 6, AV_DICT_DONT_OVERWRITE);
    av_dict_set_int(&dict, "12", 1, 0);
    av_dict_set_int(&dict, "12", 2, AV_DICT_APPEND);
    e = ((void*)0);
    while ((e = av_dict_get(dict, "", e, AV_DICT_IGNORE_SUFFIX)))
        printf("%s %s\n", e->key, e->value);
    av_dict_free(&dict);


    printf("\nTesting av_dict_set() with existing AVDictionaryEntry.key as key\n");
    av_dict_set(&dict, "key", "old", 0);
    e = av_dict_get(dict, "key", ((void*)0), 0);
    av_dict_set(&dict, e->key, "new val OK", 0);
    e = av_dict_get(dict, "key", ((void*)0), 0);
    printf("%s\n", e->value);
    av_dict_set(&dict, e->key, e->value, 0);
    e = av_dict_get(dict, "key", ((void*)0), 0);
    printf("%s\n", e->value);
    av_dict_free(&dict);

    return 0;
}
