
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int stats ;
typedef int percentiles ;


 int format_time_us ;
 int print_units (int ,int ,int) ;
 int printf (char*,...) ;
 int stats_percentile (int *,long double) ;

__attribute__((used)) static void print_stats_latency(stats *stats) {
    long double percentiles[] = { 50.0, 75.0, 90.0, 99.0 };
    printf("  Latency Distribution\n");
    for (size_t i = 0; i < sizeof(percentiles) / sizeof(long double); i++) {
        long double p = percentiles[i];
        uint64_t n = stats_percentile(stats, p);
        printf("%7.0Lf%%", p);
        print_units(n, format_time_us, 10);
        printf("\n");
    }
}
