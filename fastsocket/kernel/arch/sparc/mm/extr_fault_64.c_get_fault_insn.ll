; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_fault_64.c_get_fault_insn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_fault_64.c_get_fault_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32, i32 }

@TSTATE_PRIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, i32)* @get_fault_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_fault_insn(%struct.pt_regs* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %40, label %8

8:                                                ; preds = %2
  %9 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %10 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %15 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 3
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13, %8
  store i32 0, i32* %3, align 4
  br label %42

20:                                               ; preds = %13
  %21 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %22 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @TSTATE_PRIV, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %29 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i32*
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %5, align 4
  br label %39

34:                                               ; preds = %20
  %35 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %36 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @get_user_insn(i32 %37)
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %34, %27
  br label %40

40:                                               ; preds = %39, %2
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %19
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @get_user_insn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
