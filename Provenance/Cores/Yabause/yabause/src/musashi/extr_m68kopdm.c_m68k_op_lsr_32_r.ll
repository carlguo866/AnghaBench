; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopdm.c_m68k_op_lsr_32_r.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopdm.c_m68k_op_lsr_32_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DY = common dso_local global i32 0, align 4
@DX = common dso_local global i32 0, align 4
@CYC_SHIFT = common dso_local global i32 0, align 4
@FLAG_X = common dso_local global i32 0, align 4
@FLAG_C = common dso_local global i32 0, align 4
@NFLAG_CLEAR = common dso_local global i32 0, align 4
@FLAG_N = common dso_local global i32 0, align 4
@FLAG_Z = common dso_local global i32 0, align 4
@VFLAG_CLEAR = common dso_local global i32 0, align 4
@FLAG_V = common dso_local global i32 0, align 4
@ZFLAG_SET = common dso_local global i32 0, align 4
@CFLAG_CLEAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_op_lsr_32_r() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* @DY, i32** %1, align 8
  %5 = load i32, i32* @DX, align 4
  %6 = and i32 %5, 63
  store i32 %6, i32* %2, align 4
  %7 = load i32*, i32** %1, align 8
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %2, align 4
  %11 = ashr i32 %9, %10
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %46

14:                                               ; preds = %0
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @CYC_SHIFT, align 4
  %17 = shl i32 %15, %16
  %18 = call i32 @USE_CYCLES(i32 %17)
  %19 = load i32, i32* %2, align 4
  %20 = icmp slt i32 %19, 32
  br i1 %20, label %21, label %32

21:                                               ; preds = %14
  %22 = load i32, i32* %4, align 4
  %23 = load i32*, i32** %1, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %2, align 4
  %26 = sub nsw i32 %25, 1
  %27 = ashr i32 %24, %26
  %28 = shl i32 %27, 8
  store i32 %28, i32* @FLAG_X, align 4
  store i32 %28, i32* @FLAG_C, align 4
  %29 = load i32, i32* @NFLAG_CLEAR, align 4
  store i32 %29, i32* @FLAG_N, align 4
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* @FLAG_Z, align 4
  %31 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %31, i32* @FLAG_V, align 4
  br label %52

32:                                               ; preds = %14
  %33 = load i32*, i32** %1, align 8
  store i32 0, i32* %33, align 4
  %34 = load i32, i32* %2, align 4
  %35 = icmp eq i32 %34, 32
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @GET_MSB_32(i32 %37)
  %39 = ashr i32 %38, 23
  br label %41

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40, %36
  %42 = phi i32 [ %39, %36 ], [ 0, %40 ]
  store i32 %42, i32* @FLAG_C, align 4
  store i32 %42, i32* @FLAG_X, align 4
  %43 = load i32, i32* @NFLAG_CLEAR, align 4
  store i32 %43, i32* @FLAG_N, align 4
  %44 = load i32, i32* @ZFLAG_SET, align 4
  store i32 %44, i32* @FLAG_Z, align 4
  %45 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %45, i32* @FLAG_V, align 4
  br label %52

46:                                               ; preds = %0
  %47 = load i32, i32* @CFLAG_CLEAR, align 4
  store i32 %47, i32* @FLAG_C, align 4
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @NFLAG_32(i32 %48)
  store i32 %49, i32* @FLAG_N, align 4
  %50 = load i32, i32* %3, align 4
  store i32 %50, i32* @FLAG_Z, align 4
  %51 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %51, i32* @FLAG_V, align 4
  br label %52

52:                                               ; preds = %46, %41, %21
  ret void
}

declare dso_local i32 @USE_CYCLES(i32) #1

declare dso_local i32 @GET_MSB_32(i32) #1

declare dso_local i32 @NFLAG_32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
