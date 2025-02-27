; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_dumpstack.c_show_trace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_dumpstack.c_show_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.pt_regs = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"\0ACall trace:\0A\00", align 1
@print_trace_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@current = common dso_local global %struct.task_struct* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_trace(%struct.task_struct* %0, i64* %1, %struct.pt_regs* %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.pt_regs*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i64* %1, i64** %5, align 8
  store %struct.pt_regs* %2, %struct.pt_regs** %6, align 8
  %7 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %8 = icmp ne %struct.pt_regs* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %11 = call i64 @user_mode(%struct.pt_regs* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %28

14:                                               ; preds = %9, %3
  %15 = call i32 @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %17 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %18 = load i64*, i64** %5, align 8
  %19 = call i32 @unwind_stack(%struct.task_struct* %16, %struct.pt_regs* %17, i64* %18, i32* @print_trace_ops, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %20 = call i32 @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %21 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %22 = icmp ne %struct.task_struct* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %14
  %24 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %24, %struct.task_struct** %4, align 8
  br label %25

25:                                               ; preds = %23, %14
  %26 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %27 = call i32 @debug_show_held_locks(%struct.task_struct* %26)
  br label %28

28:                                               ; preds = %25, %13
  ret void
}

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @unwind_stack(%struct.task_struct*, %struct.pt_regs*, i64*, i32*, i8*) #1

declare dso_local i32 @debug_show_held_locks(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
