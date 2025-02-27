; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/math-emu/extr_math.c_fpu_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/math-emu/extr_math.c_fpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_fpu_soft_struct = type { i64*, i64*, i64, i32 }

@FPSCR_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_fpu_soft_struct*)* @fpu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fpu_init(%struct.sh_fpu_soft_struct* %0) #0 {
  %2 = alloca %struct.sh_fpu_soft_struct*, align 8
  %3 = alloca i32, align 4
  store %struct.sh_fpu_soft_struct* %0, %struct.sh_fpu_soft_struct** %2, align 8
  %4 = load i32, i32* @FPSCR_INIT, align 4
  %5 = load %struct.sh_fpu_soft_struct*, %struct.sh_fpu_soft_struct** %2, align 8
  %6 = getelementptr inbounds %struct.sh_fpu_soft_struct, %struct.sh_fpu_soft_struct* %5, i32 0, i32 3
  store i32 %4, i32* %6, align 8
  %7 = load %struct.sh_fpu_soft_struct*, %struct.sh_fpu_soft_struct** %2, align 8
  %8 = getelementptr inbounds %struct.sh_fpu_soft_struct, %struct.sh_fpu_soft_struct* %7, i32 0, i32 2
  store i64 0, i64* %8, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %25, %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 16
  br i1 %11, label %12, label %28

12:                                               ; preds = %9
  %13 = load %struct.sh_fpu_soft_struct*, %struct.sh_fpu_soft_struct** %2, align 8
  %14 = getelementptr inbounds %struct.sh_fpu_soft_struct, %struct.sh_fpu_soft_struct* %13, i32 0, i32 1
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  store i64 0, i64* %18, align 8
  %19 = load %struct.sh_fpu_soft_struct*, %struct.sh_fpu_soft_struct** %2, align 8
  %20 = getelementptr inbounds %struct.sh_fpu_soft_struct, %struct.sh_fpu_soft_struct* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %12
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %9

28:                                               ; preds = %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
