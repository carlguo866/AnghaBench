; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_aes.c_mix_core.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_aes.c_mix_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ([256 x i32]*, i32, i32, i32, i32)* @mix_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mix_core([256 x i32]* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca [256 x i32]*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store [256 x i32]* %0, [256 x i32]** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load [256 x i32]*, [256 x i32]** %6, align 8
  %12 = getelementptr inbounds [256 x i32], [256 x i32]* %11, i64 0
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load [256 x i32]*, [256 x i32]** %6, align 8
  %18 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 1
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [256 x i32], [256 x i32]* %18, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = xor i32 %16, %22
  %24 = load [256 x i32]*, [256 x i32]** %6, align 8
  %25 = getelementptr inbounds [256 x i32], [256 x i32]* %24, i64 2
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [256 x i32], [256 x i32]* %25, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = xor i32 %23, %29
  %31 = load [256 x i32]*, [256 x i32]** %6, align 8
  %32 = getelementptr inbounds [256 x i32], [256 x i32]* %31, i64 3
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [256 x i32], [256 x i32]* %32, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = xor i32 %30, %36
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
