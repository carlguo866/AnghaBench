; ModuleID = '/home/carl/AnghaBench/lz4/tests/extr_frametest.c_FUZ_rand.c'
source_filename = "/home/carl/AnghaBench/lz4/tests/extr_frametest.c_FUZ_rand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prime1 = common dso_local global i32 0, align 4
@prime2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FUZ_rand(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = load i32, i32* %4, align 4
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @prime1, align 4
  %7 = load i32, i32* %3, align 4
  %8 = mul nsw i32 %7, %6
  store i32 %8, i32* %3, align 4
  %9 = load i64, i64* @prime2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = add nsw i64 %11, %9
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @FUZ_rotl32(i32 %14, i32 13)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32*, i32** %2, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %3, align 4
  %19 = ashr i32 %18, 5
  ret i32 %19
}

declare dso_local i32 @FUZ_rotl32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
