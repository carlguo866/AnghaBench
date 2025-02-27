; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_manager.c_manager_clear_jobs.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_manager.c_manager_clear_jobs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@JOB_CANCELED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @manager_clear_jobs(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = call i32 @assert(%struct.TYPE_4__* %4)
  br label %6

6:                                                ; preds = %12, %1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32* @hashmap_first(i32 %9)
  store i32* %10, i32** %3, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* @JOB_CANCELED, align 4
  %15 = call i32 @job_finish_and_invalidate(i32* %13, i32 %14, i32 0, i32 0)
  br label %6

16:                                               ; preds = %6
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_4__*) #1

declare dso_local i32* @hashmap_first(i32) #1

declare dso_local i32 @job_finish_and_invalidate(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
