; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_filter_lrzip.c_lrzip_bidder_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_filter_lrzip.c_lrzip_bidder_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read_filter = type { i8*, i32 }

@.str = private unnamed_addr constant [12 x i8] c"lrzip -d -q\00", align 1
@ARCHIVE_FILTER_LRZIP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"lrzip\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read_filter*)* @lrzip_bidder_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lrzip_bidder_init(%struct.archive_read_filter* %0) #0 {
  %2 = alloca %struct.archive_read_filter*, align 8
  %3 = alloca i32, align 4
  store %struct.archive_read_filter* %0, %struct.archive_read_filter** %2, align 8
  %4 = load %struct.archive_read_filter*, %struct.archive_read_filter** %2, align 8
  %5 = call i32 @__archive_read_program(%struct.archive_read_filter* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @ARCHIVE_FILTER_LRZIP, align 4
  %7 = load %struct.archive_read_filter*, %struct.archive_read_filter** %2, align 8
  %8 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %7, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  %9 = load %struct.archive_read_filter*, %struct.archive_read_filter** %2, align 8
  %10 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %9, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  %11 = load i32, i32* %3, align 4
  ret i32 %11
}

declare dso_local i32 @__archive_read_program(%struct.archive_read_filter*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
