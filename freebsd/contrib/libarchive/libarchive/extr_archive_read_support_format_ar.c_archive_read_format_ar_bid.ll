; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_ar.c_archive_read_format_ar_bid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_ar.c_archive_read_format_ar_bid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"!<arch>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, i32)* @archive_read_format_ar_bid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_read_format_ar_bid(%struct.archive_read* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %9 = call i8* @__archive_read_ahead(%struct.archive_read* %8, i32 8, i32* null)
  store i8* %9, i8** %6, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %18

12:                                               ; preds = %2
  %13 = load i8*, i8** %6, align 8
  %14 = call i64 @memcmp(i8* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 64, i32* %3, align 4
  br label %18

17:                                               ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %18

18:                                               ; preds = %17, %16, %11
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i32, i32*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
