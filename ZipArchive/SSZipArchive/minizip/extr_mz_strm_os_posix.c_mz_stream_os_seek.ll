; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_strm_os_posix.c_mz_stream_os_seek.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_strm_os_posix.c_mz_stream_os_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@SEEK_CUR = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@MZ_SEEK_ERROR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@MZ_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mz_stream_os_seek(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %19 [
    i32 130, label %13
    i32 129, label %15
    i32 128, label %17
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* @SEEK_CUR, align 4
  store i32 %14, i32* %9, align 4
  br label %21

15:                                               ; preds = %3
  %16 = load i32, i32* @SEEK_END, align 4
  store i32 %16, i32* %9, align 4
  br label %21

17:                                               ; preds = %3
  %18 = load i32, i32* @SEEK_SET, align 4
  store i32 %18, i32* %9, align 4
  br label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @MZ_SEEK_ERROR, align 4
  store i32 %20, i32* %4, align 4
  br label %36

21:                                               ; preds = %17, %15, %13
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i64 @fseeko64(i32 %24, i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load i32, i32* @errno, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @MZ_SEEK_ERROR, align 4
  store i32 %33, i32* %4, align 4
  br label %36

34:                                               ; preds = %21
  %35 = load i32, i32* @MZ_OK, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %34, %29, %19
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i64 @fseeko64(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
