; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_read_multiple_data_objects.c_file_seek.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_read_multiple_data_objects.c_file_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.mydata = type { i32 }

@ARCHIVE_FATAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.archive*, i8*, i64, i32)* @file_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @file_seek(%struct.archive* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.archive*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mydata*, align 8
  %11 = alloca i64, align 8
  store %struct.archive* %0, %struct.archive** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.mydata*
  store %struct.mydata* %13, %struct.mydata** %10, align 8
  %14 = load %struct.archive*, %struct.archive** %6, align 8
  %15 = load %struct.mydata*, %struct.mydata** %10, align 8
  %16 = getelementptr inbounds %struct.mydata, %struct.mydata* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i64 @lseek(i32 %17, i64 %18, i32 %19)
  store i64 %20, i64* %11, align 8
  %21 = load i64, i64* %11, align 8
  %22 = icmp sge i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i64, i64* %11, align 8
  store i64 %24, i64* %5, align 8
  br label %27

25:                                               ; preds = %4
  %26 = load i64, i64* @ARCHIVE_FATAL, align 8
  store i64 %26, i64* %5, align 8
  br label %27

27:                                               ; preds = %25, %23
  %28 = load i64, i64* %5, align 8
  ret i64 %28
}

declare dso_local i64 @lseek(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
