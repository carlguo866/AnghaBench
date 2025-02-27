; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_otrx.c_otrx_crc32.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_otrx.c_otrx_crc32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crc32_tbl = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @otrx_crc32(i32 %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  br label %7

7:                                                ; preds = %10, %3
  %8 = load i64, i64* %6, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %7
  %11 = load i32*, i32** @crc32_tbl, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %13, align 4
  %15 = xor i32 %12, %14
  %16 = and i32 %15, 255
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %11, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = ashr i32 %20, 8
  %22 = xor i32 %19, %21
  store i32 %22, i32* %4, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = add i64 %25, -1
  store i64 %26, i64* %6, align 8
  br label %7

27:                                               ; preds = %7
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
