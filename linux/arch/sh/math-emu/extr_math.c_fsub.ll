; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/math-emu/extr_math.c_fsub.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/math-emu/extr_math.c_fsub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_fpu_soft_struct = type { i32 }
%struct.pt_regs = type { i32 }

@ARITH_X = common dso_local global i32 0, align 4
@SUB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_fpu_soft_struct*, %struct.pt_regs*, i32, i32)* @fsub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsub(%struct.sh_fpu_soft_struct* %0, %struct.pt_regs* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sh_fpu_soft_struct*, align 8
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sh_fpu_soft_struct* %0, %struct.sh_fpu_soft_struct** %5, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* @ARITH_X, align 4
  %10 = load i32, i32* @SUB, align 4
  %11 = call i32 @BOTH_PRmn(i32 %9, i32 %10)
  ret i32 0
}

declare dso_local i32 @BOTH_PRmn(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
