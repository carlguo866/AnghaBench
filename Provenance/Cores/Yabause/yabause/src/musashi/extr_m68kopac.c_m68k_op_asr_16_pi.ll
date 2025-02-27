; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopac.c_m68k_op_asr_16_pi.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopac.c_m68k_op_asr_16_pi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FLAG_N = common dso_local global i32 0, align 4
@FLAG_Z = common dso_local global i32 0, align 4
@VFLAG_CLEAR = common dso_local global i32 0, align 4
@FLAG_V = common dso_local global i32 0, align 4
@FLAG_X = common dso_local global i32 0, align 4
@FLAG_C = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_op_asr_16_pi() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @EA_AY_PI_16()
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = call i32 @m68ki_read_16(i32 %5)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = ashr i32 %7, 1
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i64 @GET_MSB_16(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %0
  %13 = load i32, i32* %3, align 4
  %14 = or i32 %13, 32768
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %12, %0
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @m68ki_write_16(i32 %16, i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @NFLAG_16(i32 %19)
  store i32 %20, i32* @FLAG_N, align 4
  %21 = load i32, i32* %3, align 4
  store i32 %21, i32* @FLAG_Z, align 4
  %22 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %22, i32* @FLAG_V, align 4
  %23 = load i32, i32* %2, align 4
  %24 = shl i32 %23, 8
  store i32 %24, i32* @FLAG_X, align 4
  store i32 %24, i32* @FLAG_C, align 4
  ret void
}

declare dso_local i32 @EA_AY_PI_16(...) #1

declare dso_local i32 @m68ki_read_16(i32) #1

declare dso_local i64 @GET_MSB_16(i32) #1

declare dso_local i32 @m68ki_write_16(i32, i32) #1

declare dso_local i32 @NFLAG_16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
