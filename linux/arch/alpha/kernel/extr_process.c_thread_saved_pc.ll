; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_process.c_thread_saved_pc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_process.c_thread_saved_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.task_struct*)* @thread_saved_pc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @thread_saved_pc(%struct.task_struct* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  %7 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %8 = call i64 @task_stack_page(%struct.task_struct* %7)
  store i64 %8, i64* %4, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %10 = call %struct.TYPE_4__* @task_thread_info(%struct.task_struct* %9)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp ugt i64 %14, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %1
  %18 = load i64, i64* %6, align 8
  %19 = add i64 %18, 48
  %20 = load i64, i64* %4, align 8
  %21 = add i64 %20, 16384
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %17
  %24 = load i64, i64* %6, align 8
  %25 = inttoptr i64 %24 to i64*
  %26 = getelementptr inbounds i64, i64* %25, i64 6
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp ugt i64 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %23
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %4, align 8
  %34 = add i64 %33, 16384
  %35 = icmp ult i64 %32, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i64, i64* %5, align 8
  %38 = inttoptr i64 %37 to i64*
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %2, align 8
  br label %42

40:                                               ; preds = %31, %23
  br label %41

41:                                               ; preds = %40, %17, %1
  store i64 0, i64* %2, align 8
  br label %42

42:                                               ; preds = %41, %36
  %43 = load i64, i64* %2, align 8
  ret i64 %43
}

declare dso_local i64 @task_stack_page(%struct.task_struct*) #1

declare dso_local %struct.TYPE_4__* @task_thread_info(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
