; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-log-split.c_output_stats.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-log-split.c_output_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [150 x i8] c"read: %lld bytes (reported binlog position %lld), %lld records, out of them %lld ad_view\0Awritten: %lld bytes, %lld records, out of them %lld ad_view\0A\00", align 1
@rd_bytes = common dso_local global i32 0, align 4
@rd_rec = common dso_local global i32 0, align 4
@rd_views_rec = common dso_local global i32 0, align 4
@wr_bytes = common dso_local global i32 0, align 4
@wr_rec = common dso_local global i32 0, align 4
@wr_views_rec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output_stats() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = load i32, i32* @rd_bytes, align 4
  %3 = call i32 (...) @log_cur_pos()
  %4 = load i32, i32* @rd_rec, align 4
  %5 = load i32, i32* @rd_views_rec, align 4
  %6 = load i32, i32* @wr_bytes, align 4
  %7 = load i32, i32* @wr_rec, align 4
  %8 = load i32, i32* @wr_views_rec, align 4
  %9 = call i32 @fprintf(i32 %1, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @.str, i64 0, i64 0), i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @log_cur_pos(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
