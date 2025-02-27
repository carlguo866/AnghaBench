; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/kernel/extr_process.c_singlestepping.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/kernel/extr_process.c_singlestepping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@current = common dso_local global i8* null, align 8
@PT_DTRACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @singlestepping(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.task_struct*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  br label %11

9:                                                ; preds = %1
  %10 = load i8*, i8** @current, align 8
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i8* [ %8, %7 ], [ %10, %9 ]
  %13 = bitcast i8* %12 to %struct.task_struct*
  store %struct.task_struct* %13, %struct.task_struct** %4, align 8
  %14 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %15 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @PT_DTRACE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %29

21:                                               ; preds = %11
  %22 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %23 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %29

28:                                               ; preds = %21
  store i32 2, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %27, %20
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
