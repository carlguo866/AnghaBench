
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AVERROR (int ) ;
 int AVERROR_OPTION_NOT_FOUND ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int AV_OPT_SEARCH_CHILDREN ;
 int EINVAL ;
 int ENOMEM ;
 int av_free (char*) ;
 int av_freep (char**) ;
 char* av_get_token (char const**,char const*) ;
 int av_log (void*,int ,char*,char*,...) ;
 int av_opt_set (void*,char*,char*,int ) ;
 scalar_t__ strspn (char const*,char const*) ;

__attribute__((used)) static int parse_key_value_pair(void *ctx, const char **buf,
                                const char *key_val_sep, const char *pairs_sep)
{
    char *key = av_get_token(buf, key_val_sep);
    char *val;
    int ret;

    if (!key)
        return AVERROR(ENOMEM);

    if (*key && strspn(*buf, key_val_sep)) {
        (*buf)++;
        val = av_get_token(buf, pairs_sep);
        if (!val) {
            av_freep(&key);
            return AVERROR(ENOMEM);
        }
    } else {
        av_log(ctx, AV_LOG_ERROR, "Missing key or no key/value separator found after key '%s'\n", key);
        av_free(key);
        return AVERROR(EINVAL);
    }

    av_log(ctx, AV_LOG_DEBUG, "Setting entry with key '%s' to value '%s'\n", key, val);

    ret = av_opt_set(ctx, key, val, AV_OPT_SEARCH_CHILDREN);
    if (ret == AVERROR_OPTION_NOT_FOUND)
        av_log(ctx, AV_LOG_ERROR, "Key '%s' not found.\n", key);

    av_free(key);
    av_free(val);
    return ret;
}
