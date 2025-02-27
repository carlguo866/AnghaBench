; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/doc/educational_decoder/extr_zstd_decompress.c_decode_literals.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/doc/educational_decoder/extr_zstd_decompress.c_decode_literals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32**)* @decode_literals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @decode_literals(i32* %0, i32* %1, i32** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call i64 @IO_read_bits(i32* %10, i32 2)
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %8, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = call i64 @IO_read_bits(i32* %13, i32 2)
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp sle i32 %16, 1
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load i32*, i32** %6, align 8
  %20 = load i32**, i32*** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i64 @decode_literals_simple(i32* %19, i32** %20, i32 %21, i32 %22)
  store i64 %23, i64* %4, align 8
  br label %31

24:                                               ; preds = %3
  %25 = load i32*, i32** %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i32**, i32*** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i64 @decode_literals_compressed(i32* %25, i32* %26, i32** %27, i32 %28, i32 %29)
  store i64 %30, i64* %4, align 8
  br label %31

31:                                               ; preds = %24, %18
  %32 = load i64, i64* %4, align 8
  ret i64 %32
}

declare dso_local i64 @IO_read_bits(i32*, i32) #1

declare dso_local i64 @decode_literals_simple(i32*, i32**, i32, i32) #1

declare dso_local i64 @decode_literals_compressed(i32*, i32*, i32**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
