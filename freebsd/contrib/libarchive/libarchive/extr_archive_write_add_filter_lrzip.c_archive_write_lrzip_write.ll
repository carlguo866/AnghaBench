; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_lrzip.c_archive_write_lrzip_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_lrzip.c_archive_write_lrzip_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write_filter = type { i64 }
%struct.write_lrzip = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write_filter*, i8*, i64)* @archive_write_lrzip_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_write_lrzip_write(%struct.archive_write_filter* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.archive_write_filter*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.write_lrzip*, align 8
  store %struct.archive_write_filter* %0, %struct.archive_write_filter** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.archive_write_filter*, %struct.archive_write_filter** %4, align 8
  %9 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.write_lrzip*
  store %struct.write_lrzip* %11, %struct.write_lrzip** %7, align 8
  %12 = load %struct.archive_write_filter*, %struct.archive_write_filter** %4, align 8
  %13 = load %struct.write_lrzip*, %struct.write_lrzip** %7, align 8
  %14 = getelementptr inbounds %struct.write_lrzip, %struct.write_lrzip* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @__archive_write_program_write(%struct.archive_write_filter* %12, i32 %15, i8* %16, i64 %17)
  ret i32 %18
}

declare dso_local i32 @__archive_write_program_write(%struct.archive_write_filter*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
