; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/kernel/extr_ptrace.c_insn_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/kernel/extr_ptrace.c_insn_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"ERROR: Couldn't find size of opcode 0x%lx at 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i64)* @insn_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insn_size(%struct.task_struct* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @access_process_vm(%struct.task_struct* %9, i64 %10, i64* %6, i32 8, i32 0)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ne i64 %13, 8
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %35

16:                                               ; preds = %2
  %17 = load i64, i64* %6, align 8
  %18 = and i64 %17, 3840
  %19 = lshr i64 %18, 8
  switch i64 %19, label %29 [
    i64 0, label %20
    i64 9, label %20
    i64 11, label %20
    i64 14, label %21
    i64 15, label %21
    i64 13, label %22
  ]

20:                                               ; preds = %16, %16, %16
  store i32 2, i32* %8, align 4
  br label %33

21:                                               ; preds = %16, %16
  store i32 6, i32* %8, align 4
  br label %33

22:                                               ; preds = %16
  %23 = load i64, i64* %6, align 8
  %24 = and i64 %23, 255
  %25 = icmp eq i64 %24, 255
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 4, i32* %8, align 4
  br label %28

27:                                               ; preds = %22
  store i32 6, i32* %8, align 4
  br label %28

28:                                               ; preds = %27, %26
  br label %33

29:                                               ; preds = %16
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @panic(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %30, i64 %31)
  br label %33

33:                                               ; preds = %29, %28, %21, %20
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %33, %15
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @access_process_vm(%struct.task_struct*, i64, i64*, i32, i32) #1

declare dso_local i32 @panic(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
