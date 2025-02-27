; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm64/extr_disassembler.c_thumb32_parallel_addsub_unsigned.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm64/extr_disassembler.c_thumb32_parallel_addsub_unsigned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG_PC = common dso_local global i64 0, align 8
@FASTTRAP_T_COMMON = common dso_local global i32 0, align 4
@FASTTRAP_T_INV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @thumb32_parallel_addsub_unsigned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thumb32_parallel_addsub_unsigned(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i64 @THUMB32_RM(i32 %6, i32 %7)
  %9 = load i64, i64* @REG_PC, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @THUMB32_RD(i32 %12, i32 %13)
  %15 = load i64, i64* @REG_PC, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %11
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @THUMB32_RN(i32 %18, i32 %19)
  %21 = load i64, i64* @REG_PC, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @FASTTRAP_T_COMMON, align 4
  store i32 %24, i32* %3, align 4
  br label %27

25:                                               ; preds = %17, %11, %2
  %26 = load i32, i32* @FASTTRAP_T_INV, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i64 @THUMB32_RM(i32, i32) #1

declare dso_local i64 @THUMB32_RD(i32, i32) #1

declare dso_local i64 @THUMB32_RN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
