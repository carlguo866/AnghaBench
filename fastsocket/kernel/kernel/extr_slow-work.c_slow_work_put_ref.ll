; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_slow-work.c_slow_work_put_ref.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_slow-work.c_slow_work_put_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slow_work = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.slow_work*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slow_work*)* @slow_work_put_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slow_work_put_ref(%struct.slow_work* %0) #0 {
  %2 = alloca %struct.slow_work*, align 8
  store %struct.slow_work* %0, %struct.slow_work** %2, align 8
  %3 = load %struct.slow_work*, %struct.slow_work** %2, align 8
  %4 = getelementptr inbounds %struct.slow_work, %struct.slow_work* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32 (%struct.slow_work*)*, i32 (%struct.slow_work*)** %6, align 8
  %8 = icmp ne i32 (%struct.slow_work*)* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.slow_work*, %struct.slow_work** %2, align 8
  %11 = getelementptr inbounds %struct.slow_work, %struct.slow_work* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.slow_work*)*, i32 (%struct.slow_work*)** %13, align 8
  %15 = load %struct.slow_work*, %struct.slow_work** %2, align 8
  %16 = call i32 %14(%struct.slow_work* %15)
  br label %17

17:                                               ; preds = %9, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
