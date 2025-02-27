
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_journal ;
typedef int Set ;
typedef int OutputMode ;
typedef int OutputFlags ;
typedef int FILE ;


 char* ANSI_HIGHLIGHT_RED ;
 char* ANSI_NORMAL ;
 int EBADMSG ;
 int ENOENT ;
 int OUTPUT_COLOR ;
 int assert (int) ;
 int fputc (char,int *) ;
 int fwrite (char const*,int,size_t const,int *) ;
 int log_debug_errno (int,char*) ;
 int log_error_errno (int,char*) ;
 int sd_journal_get_data (int *,char*,void const**,size_t*) ;
 int sd_journal_set_data_threshold (int *,int ) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int output_cat(
                FILE *f,
                sd_journal *j,
                OutputMode mode,
                unsigned n_columns,
                OutputFlags flags,
                Set *output_fields,
                const size_t highlight[2]) {

        const void *data;
        size_t l;
        int r;
        const char *highlight_on = "", *highlight_off = "";

        assert(j);
        assert(f);

        if (flags & OUTPUT_COLOR) {
                highlight_on = ANSI_HIGHLIGHT_RED;
                highlight_off = ANSI_NORMAL;
        }

        sd_journal_set_data_threshold(j, 0);

        r = sd_journal_get_data(j, "MESSAGE", &data, &l);
        if (r == -EBADMSG) {
                log_debug_errno(r, "Skipping message we can't read: %m");
                return 0;
        }
        if (r < 0) {

                if (r == -ENOENT)
                        return 0;

                return log_error_errno(r, "Failed to get data: %m");
        }

        assert(l >= 8);

        if (highlight && (flags & OUTPUT_COLOR)) {
                assert(highlight[0] <= highlight[1]);
                assert(highlight[1] <= l - 8);

                fwrite((const char*) data + 8, 1, highlight[0], f);
                fwrite(highlight_on, 1, strlen(highlight_on), f);
                fwrite((const char*) data + 8 + highlight[0], 1, highlight[1] - highlight[0], f);
                fwrite(highlight_off, 1, strlen(highlight_off), f);
                fwrite((const char*) data + 8 + highlight[1], 1, l - 8 - highlight[1], f);
        } else
                fwrite((const char*) data + 8, 1, l - 8, f);
        fputc('\n', f);

        return 0;
}
