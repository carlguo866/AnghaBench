; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_ptrace.c_read_instr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_ptrace.c_read_instr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i64, i32*)* @read_instr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_instr(%struct.task_struct* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = and i64 %10, 1
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %3
  %14 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = and i64 %15, -2
  %17 = call i32 @access_process_vm(%struct.task_struct* %14, i64 %16, i32* %8, i32 4, i32 0)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp eq i64 %19, 4
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %25

22:                                               ; preds = %13
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  br label %25

25:                                               ; preds = %22, %21
  %26 = phi i32 [ 0, %21 ], [ %24, %22 ]
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32*, i32** %6, align 8
  store i32 %27, i32* %28, align 4
  br label %45

29:                                               ; preds = %3
  %30 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %31 = load i64, i64* %5, align 8
  %32 = and i64 %31, -4
  %33 = call i32 @access_process_vm(%struct.task_struct* %30, i64 %32, i32* %9, i32 4, i32 0)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp eq i64 %35, 4
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %41

38:                                               ; preds = %29
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  br label %41

41:                                               ; preds = %38, %37
  %42 = phi i32 [ 0, %37 ], [ %40, %38 ]
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32*, i32** %6, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %41, %25
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local i32 @access_process_vm(%struct.task_struct*, i64, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
