; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_traps_64.c_do_getpsr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_traps_64.c_do_getpsr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32, i32, i32, i32* }

@UREG_I0 = common dso_local global i64 0, align 8
@TIF_32BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_getpsr(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %3 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %4 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @tstate_to_psr(i32 %5)
  %7 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %8 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %7, i32 0, i32 3
  %9 = load i32*, i32** %8, align 8
  %10 = load i64, i64* @UREG_I0, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  store i32 %6, i32* %11, align 4
  %12 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %13 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %16 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %18 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 4
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* @TIF_32BIT, align 4
  %22 = call i64 @test_thread_flag(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %26 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %26, align 8
  %28 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %29 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %29, align 4
  br label %31

31:                                               ; preds = %24, %1
  ret void
}

declare dso_local i32 @tstate_to_psr(i32) #1

declare dso_local i64 @test_thread_flag(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
