; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_exec.c_finalize_exec.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_exec.c_finalize_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.linux_binprm = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@RLIMIT_STACK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @finalize_exec(%struct.linux_binprm* %0) #0 {
  %2 = alloca %struct.linux_binprm*, align 8
  store %struct.linux_binprm* %0, %struct.linux_binprm** %2, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @task_lock(i32 %5)
  %7 = load %struct.linux_binprm*, %struct.linux_binprm** %2, align 8
  %8 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @RLIMIT_STACK, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  store i32 %9, i32* %16, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @task_unlock(i32 %19)
  ret void
}

declare dso_local i32 @task_lock(i32) #1

declare dso_local i32 @task_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
