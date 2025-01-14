; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_gzip.c_gzip_decompress.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_gzip.c_gzip_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@QAT_DECOMPRESS = common dso_local global i32 0, align 4
@CPA_STATUS_SUCCESS = common dso_local global i64 0, align 8
@Z_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gzip_decompress(i8* %0, i8* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i64, i64* %10, align 8
  store i64 %13, i64* %12, align 8
  %14 = load i64, i64* %10, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp uge i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load i64, i64* %10, align 8
  %20 = call i64 @qat_dc_use_accel(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %5
  %23 = load i32, i32* @QAT_DECOMPRESS, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i64, i64* %10, align 8
  %28 = call i64 @qat_compress(i32 %23, i8* %24, i64 %25, i8* %26, i64 %27, i64* %12)
  %29 = load i64, i64* @CPA_STATUS_SUCCESS, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %42

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32, %5
  %34 = load i8*, i8** %8, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i64 @uncompress_func(i8* %34, i64* %12, i8* %35, i64 %36)
  %38 = load i64, i64* @Z_OK, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 -1, i32* %6, align 4
  br label %42

41:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %41, %40, %31
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @qat_dc_use_accel(i64) #1

declare dso_local i64 @qat_compress(i32, i8*, i64, i8*, i64, i64*) #1

declare dso_local i64 @uncompress_func(i8*, i64*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
