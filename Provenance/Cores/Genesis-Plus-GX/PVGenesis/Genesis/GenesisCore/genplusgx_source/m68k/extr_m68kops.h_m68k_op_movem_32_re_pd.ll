; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_movem_32_re_pd.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_movem_32_re_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AY = common dso_local global i32 0, align 4
@REG_DA = common dso_local global i32* null, align 8
@CYC_MOVEM_L = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @m68k_op_movem_32_re_pd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m68k_op_movem_32_re_pd() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call i32 (...) @OPER_I_16()
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* @AY, align 4
  store i32 %6, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %42, %0
  %8 = load i32, i32* %1, align 4
  %9 = icmp slt i32 %8, 16
  br i1 %9, label %10, label %45

10:                                               ; preds = %7
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* %1, align 4
  %13 = shl i32 1, %12
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %10
  %17 = load i32, i32* %3, align 4
  %18 = sub nsw i32 %17, 4
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 2
  %21 = load i32*, i32** @REG_DA, align 8
  %22 = load i32, i32* %1, align 4
  %23 = sub nsw i32 15, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 65535
  %28 = call i32 @m68ki_write_16(i32 %20, i32 %27)
  %29 = load i32, i32* %3, align 4
  %30 = load i32*, i32** @REG_DA, align 8
  %31 = load i32, i32* %1, align 4
  %32 = sub nsw i32 15, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 16
  %37 = and i32 %36, 65535
  %38 = call i32 @m68ki_write_16(i32 %29, i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %16, %10
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %1, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %1, align 4
  br label %7

45:                                               ; preds = %7
  %46 = load i32, i32* %3, align 4
  store i32 %46, i32* @AY, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @CYC_MOVEM_L, align 4
  %49 = mul nsw i32 %47, %48
  %50 = call i32 @USE_CYCLES(i32 %49)
  ret void
}

declare dso_local i32 @OPER_I_16(...) #1

declare dso_local i32 @m68ki_write_16(i32, i32) #1

declare dso_local i32 @USE_CYCLES(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
