; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopnz.c_m68k_op_sub_32_er_al.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopnz.c_m68k_op_sub_32_er_al.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DX = common dso_local global i64 0, align 8
@FLAG_N = common dso_local global i32 0, align 4
@FLAG_C = common dso_local global i32 0, align 4
@FLAG_X = common dso_local global i32 0, align 4
@FLAG_V = common dso_local global i32 0, align 4
@FLAG_Z = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_op_sub_32_er_al() #0 {
  %1 = alloca i64*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64* @DX, i64** %1, align 8
  %5 = call i64 (...) @OPER_AL_32()
  store i64 %5, i64* %2, align 8
  %6 = load i64*, i64** %1, align 8
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* %2, align 8
  %10 = sub nsw i64 %8, %9
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @NFLAG_32(i64 %11)
  store i32 %12, i32* @FLAG_N, align 4
  %13 = load i64, i64* %2, align 8
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @CFLAG_SUB_32(i64 %13, i64 %14, i64 %15)
  store i32 %16, i32* @FLAG_C, align 4
  store i32 %16, i32* @FLAG_X, align 4
  %17 = load i64, i64* %2, align 8
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @VFLAG_SUB_32(i64 %17, i64 %18, i64 %19)
  store i32 %20, i32* @FLAG_V, align 4
  %21 = load i64, i64* %4, align 8
  %22 = call i64 @MASK_OUT_ABOVE_32(i64 %21)
  store i64 %22, i64* @FLAG_Z, align 8
  %23 = load i64, i64* @FLAG_Z, align 8
  %24 = load i64*, i64** %1, align 8
  store i64 %23, i64* %24, align 8
  ret void
}

declare dso_local i64 @OPER_AL_32(...) #1

declare dso_local i32 @NFLAG_32(i64) #1

declare dso_local i32 @CFLAG_SUB_32(i64, i64, i64) #1

declare dso_local i32 @VFLAG_SUB_32(i64, i64, i64) #1

declare dso_local i64 @MASK_OUT_ABOVE_32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
