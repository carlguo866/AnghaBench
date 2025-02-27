
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AVERROR_INVALIDDATA ;
 scalar_t__ av_isspace (char) ;
 int trim_right (char*) ;

__attribute__((used)) static int split_tag_value(char **tag, char **value, char *line)
{
    char *p = line;
    int foundData = 0;

    *tag = ((void*)0);
    *value = ((void*)0);


    while (*p != '\0' && *p != ':') {
        if (!av_isspace(*p)) {
            foundData = 1;
        }
        p++;
    }
    if (*p != ':')
        return foundData ? AVERROR_INVALIDDATA : 0;

    *p = '\0';
    *tag = line;
    trim_right(*tag);

    p++;

    while (av_isspace(*p))
        p++;

    *value = p;
    trim_right(*value);

    return 0;
}
