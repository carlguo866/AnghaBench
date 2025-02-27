; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_exit.c_exit_tgroup.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_exit.c_exit_tgroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task = type { i32, %struct.tgroup* }
%struct.tgroup = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task*)* @exit_tgroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exit_tgroup(%struct.task* %0) #0 {
  %2 = alloca %struct.task*, align 8
  %3 = alloca %struct.tgroup*, align 8
  %4 = alloca i32, align 4
  store %struct.task* %0, %struct.task** %2, align 8
  %5 = load %struct.task*, %struct.task** %2, align 8
  %6 = getelementptr inbounds %struct.task, %struct.task* %5, i32 0, i32 1
  %7 = load %struct.tgroup*, %struct.tgroup** %6, align 8
  store %struct.tgroup* %7, %struct.tgroup** %3, align 8
  %8 = load %struct.task*, %struct.task** %2, align 8
  %9 = getelementptr inbounds %struct.task, %struct.task* %8, i32 0, i32 0
  %10 = call i32 @list_remove(i32* %9)
  %11 = load %struct.tgroup*, %struct.tgroup** %3, align 8
  %12 = getelementptr inbounds %struct.tgroup, %struct.tgroup* %11, i32 0, i32 2
  %13 = call i32 @list_empty(i32* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %1
  %17 = load %struct.tgroup*, %struct.tgroup** %3, align 8
  %18 = getelementptr inbounds %struct.tgroup, %struct.tgroup* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.tgroup*, %struct.tgroup** %3, align 8
  %23 = getelementptr inbounds %struct.tgroup, %struct.tgroup* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @timer_free(i64 %24)
  br label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.task*, %struct.task** %2, align 8
  %28 = call i32 @task_leave_session(%struct.task* %27)
  %29 = load %struct.tgroup*, %struct.tgroup** %3, align 8
  %30 = getelementptr inbounds %struct.tgroup, %struct.tgroup* %29, i32 0, i32 0
  %31 = call i32 @list_remove(i32* %30)
  br label %32

32:                                               ; preds = %26, %1
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @list_remove(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @timer_free(i64) #1

declare dso_local i32 @task_leave_session(%struct.task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
