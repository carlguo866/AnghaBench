; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_huf_compress.c_HUF_compress1X_wksp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_huf_compress.c_HUF_compress1X_wksp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HUF_singleStream = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HUF_compress1X_wksp(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i8* %6, i64 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store i64 %7, i64* %16, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = load i64, i64* %12, align 8
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* %14, align 4
  %23 = load i32, i32* @HUF_singleStream, align 4
  %24 = load i8*, i8** %15, align 8
  %25 = load i64, i64* %16, align 8
  %26 = call i64 @HUF_compress_internal(i8* %17, i64 %18, i8* %19, i64 %20, i32 %21, i32 %22, i32 %23, i8* %24, i64 %25, i32* null, i32* null, i32 0, i32 0)
  ret i64 %26
}

declare dso_local i64 @HUF_compress_internal(i8*, i64, i8*, i64, i32, i32, i32, i8*, i64, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
