; ModuleID = '/home/carl/AnghaBench/zstd/contrib/linux-kernel/lib/zstd/extr_huf_decompress.c_HUF_decompress4X4_DCtx_wksp.c'
source_filename = "/home/carl/AnghaBench/zstd/contrib/linux-kernel/lib/zstd/extr_huf_decompress.c_HUF_decompress4X4_DCtx_wksp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@srcSize_wrong = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HUF_decompress4X4_DCtx_wksp(i32* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5, i64 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  %18 = load i8*, i8** %12, align 8
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %16, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = load i64, i64* %13, align 8
  %23 = load i8*, i8** %14, align 8
  %24 = load i64, i64* %15, align 8
  %25 = call i64 @HUF_readDTableX4_wksp(i32* %20, i8* %21, i64 %22, i8* %23, i64 %24)
  store i64 %25, i64* %17, align 8
  %26 = load i64, i64* %17, align 8
  %27 = call i64 @HUF_isError(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %7
  %30 = load i64, i64* %17, align 8
  store i64 %30, i64* %8, align 8
  br label %51

31:                                               ; preds = %7
  %32 = load i64, i64* %17, align 8
  %33 = load i64, i64* %13, align 8
  %34 = icmp uge i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* @srcSize_wrong, align 4
  %37 = call i64 @ERROR(i32 %36)
  store i64 %37, i64* %8, align 8
  br label %51

38:                                               ; preds = %31
  %39 = load i64, i64* %17, align 8
  %40 = load i32*, i32** %16, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 %39
  store i32* %41, i32** %16, align 8
  %42 = load i64, i64* %17, align 8
  %43 = load i64, i64* %13, align 8
  %44 = sub i64 %43, %42
  store i64 %44, i64* %13, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load i32*, i32** %16, align 8
  %48 = load i64, i64* %13, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = call i64 @HUF_decompress4X4_usingDTable_internal(i8* %45, i64 %46, i32* %47, i64 %48, i32* %49)
  store i64 %50, i64* %8, align 8
  br label %51

51:                                               ; preds = %38, %35, %29
  %52 = load i64, i64* %8, align 8
  ret i64 %52
}

declare dso_local i64 @HUF_readDTableX4_wksp(i32*, i8*, i64, i8*, i64) #1

declare dso_local i64 @HUF_isError(i64) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i64 @HUF_decompress4X4_usingDTable_internal(i8*, i64, i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
