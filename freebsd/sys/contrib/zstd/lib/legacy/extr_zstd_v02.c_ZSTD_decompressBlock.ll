; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v02.c_ZSTD_decompressBlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v02.c_ZSTD_decompressBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i64, i8*, i64)* @ZSTD_decompressBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_decompressBlock(i8* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %12, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = load i64, i64* %11, align 8
  %19 = call i64 @ZSTD_decodeLiteralsBlock(i8* %16, i8* %17, i64 %18)
  store i64 %19, i64* %13, align 8
  %20 = load i64, i64* %13, align 8
  %21 = call i64 @ZSTD_isError(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i64, i64* %13, align 8
  store i64 %24, i64* %6, align 8
  br label %38

25:                                               ; preds = %5
  %26 = load i64, i64* %13, align 8
  %27 = load i32*, i32** %12, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 %26
  store i32* %28, i32** %12, align 8
  %29 = load i64, i64* %13, align 8
  %30 = load i64, i64* %11, align 8
  %31 = sub i64 %30, %29
  store i64 %31, i64* %11, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = load i64, i64* %11, align 8
  %37 = call i64 @ZSTD_decompressSequences(i8* %32, i8* %33, i64 %34, i32* %35, i64 %36)
  store i64 %37, i64* %6, align 8
  br label %38

38:                                               ; preds = %25, %23
  %39 = load i64, i64* %6, align 8
  ret i64 %39
}

declare dso_local i64 @ZSTD_decodeLiteralsBlock(i8*, i8*, i64) #1

declare dso_local i64 @ZSTD_isError(i64) #1

declare dso_local i64 @ZSTD_decompressSequences(i8*, i8*, i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
