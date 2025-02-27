; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_traps_64.c_do_fpother.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_traps_64.c_do_fpother.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpustate = type { i32 }
%struct.pt_regs = type { i32 }
%struct.TYPE_2__ = type { i32* }

@FPUSTATE = common dso_local global %struct.fpustate* null, align 8
@DIE_TRAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"fpu exception other\00", align 1
@SIGFPE = common dso_local global i32 0, align 4
@NOTIFY_STOP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_fpother(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.fpustate*, align 8
  %5 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %6 = call i32 (...) @exception_enter()
  store i32 %6, i32* %3, align 4
  %7 = load %struct.fpustate*, %struct.fpustate** @FPUSTATE, align 8
  store %struct.fpustate* %7, %struct.fpustate** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* @DIE_TRAP, align 4
  %9 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %10 = load i32, i32* @SIGFPE, align 4
  %11 = call i64 @notify_die(i32 %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.pt_regs* %9, i32 0, i32 37, i32 %10)
  %12 = load i64, i64* @NOTIFY_STOP, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %33

15:                                               ; preds = %1
  %16 = call %struct.TYPE_2__* (...) @current_thread_info()
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 114688
  switch i32 %21, label %26 [
    i32 32768, label %22
    i32 49152, label %22
  ]

22:                                               ; preds = %15, %15
  %23 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %24 = load %struct.fpustate*, %struct.fpustate** %4, align 8
  %25 = call i32 @do_mathemu(%struct.pt_regs* %23, %struct.fpustate* %24, i32 0)
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %15, %22
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %33

30:                                               ; preds = %26
  %31 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %32 = call i32 @do_fpe_common(%struct.pt_regs* %31)
  br label %33

33:                                               ; preds = %30, %29, %14
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @exception_exit(i32 %34)
  ret void
}

declare dso_local i32 @exception_enter(...) #1

declare dso_local i64 @notify_die(i32, i8*, %struct.pt_regs*, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @current_thread_info(...) #1

declare dso_local i32 @do_mathemu(%struct.pt_regs*, %struct.fpustate*, i32) #1

declare dso_local i32 @do_fpe_common(%struct.pt_regs*) #1

declare dso_local i32 @exception_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
