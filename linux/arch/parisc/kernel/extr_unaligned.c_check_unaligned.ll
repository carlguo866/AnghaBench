; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_unaligned.c_check_unaligned.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_unaligned.c_check_unaligned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32, i64 }

@OPCODE1_MASK = common dso_local global i32 0, align 4
@OPCODE4_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_unaligned(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  store i64 0, i64* %3, align 8
  %4 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %5 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @OPCODE1_MASK, align 4
  %8 = and i32 %6, %7
  switch i32 %8, label %11 [
    i32 142, label %9
    i32 140, label %9
    i32 133, label %9
    i32 136, label %10
    i32 139, label %10
    i32 134, label %10
    i32 138, label %10
    i32 131, label %10
    i32 130, label %10
  ]

9:                                                ; preds = %1, %1, %1
  store i64 1, i64* %3, align 8
  br label %20

10:                                               ; preds = %1, %1, %1, %1, %1, %1
  store i64 3, i64* %3, align 8
  br label %20

11:                                               ; preds = %1
  %12 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %13 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @OPCODE4_MASK, align 4
  %16 = and i32 %14, %15
  switch i32 %16, label %19 [
    i32 141, label %17
    i32 132, label %17
    i32 135, label %18
    i32 137, label %18
    i32 128, label %18
    i32 129, label %18
  ]

17:                                               ; preds = %11, %11
  store i64 1, i64* %3, align 8
  br label %19

18:                                               ; preds = %11, %11, %11, %11
  store i64 3, i64* %3, align 8
  br label %19

19:                                               ; preds = %11, %18, %17
  br label %20

20:                                               ; preds = %19, %10, %9
  %21 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %22 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %3, align 8
  %25 = and i64 %23, %24
  %26 = trunc i64 %25 to i32
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
