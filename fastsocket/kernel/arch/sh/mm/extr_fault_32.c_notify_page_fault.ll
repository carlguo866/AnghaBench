; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_fault_32.c_notify_page_fault.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_fault_32.c_notify_page_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, i32)* @notify_page_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @notify_page_fault(%struct.pt_regs* %0, i32 %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = call i64 (...) @kprobes_built_in()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %2
  %9 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %10 = call i32 @user_mode(%struct.pt_regs* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %8
  %13 = call i32 (...) @preempt_disable()
  %14 = call i64 (...) @kprobe_running()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @kprobe_fault_handler(%struct.pt_regs* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 1, i32* %5, align 4
  br label %22

22:                                               ; preds = %21, %16, %12
  %23 = call i32 (...) @preempt_enable()
  br label %24

24:                                               ; preds = %22, %8, %2
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

declare dso_local i64 @kprobes_built_in(...) #1

declare dso_local i32 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i64 @kprobe_running(...) #1

declare dso_local i64 @kprobe_fault_handler(%struct.pt_regs*, i32) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
