; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_compat.c_unzReadCurrentFile.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_compat.c_unzReadCurrentFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@MZ_OK = common dso_local global i64 0, align 8
@INT32_MAX = common dso_local global i64 0, align 8
@UNZ_PARAMERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unzReadCurrentFile(i64 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %5, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %8, align 8
  %12 = load i64, i64* @MZ_OK, align 8
  store i64 %12, i64* %9, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %14 = icmp eq %struct.TYPE_2__* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @INT32_MAX, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15, %3
  %20 = load i32, i32* @UNZ_PARAMERROR, align 4
  store i32 %20, i32* %4, align 4
  br label %41

21:                                               ; preds = %15
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i64 @mz_zip_entry_read(i32 %24, i8* %25, i64 %26)
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %9, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %21
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %31
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 4
  br label %38

38:                                               ; preds = %30, %21
  %39 = load i64, i64* %9, align 8
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %38, %19
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i64 @mz_zip_entry_read(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
