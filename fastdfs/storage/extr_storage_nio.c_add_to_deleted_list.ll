; ModuleID = '/home/carl/AnghaBench/fastdfs/storage/extr_storage_nio.c_add_to_deleted_list.c'
source_filename = "/home/carl/AnghaBench/fastdfs/storage/extr_storage_nio.c_add_to_deleted_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fast_task_info = type { %struct.TYPE_3__*, %struct.fast_task_info*, i64 }
%struct.TYPE_3__ = type { %struct.fast_task_info* }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_to_deleted_list(%struct.fast_task_info* %0) #0 {
  %2 = alloca %struct.fast_task_info*, align 8
  store %struct.fast_task_info* %0, %struct.fast_task_info** %2, align 8
  %3 = load %struct.fast_task_info*, %struct.fast_task_info** %2, align 8
  %4 = getelementptr inbounds %struct.fast_task_info, %struct.fast_task_info* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = inttoptr i64 %5 to %struct.TYPE_4__*
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i32 1, i32* %7, align 4
  %8 = load %struct.fast_task_info*, %struct.fast_task_info** %2, align 8
  %9 = getelementptr inbounds %struct.fast_task_info, %struct.fast_task_info* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.fast_task_info*, %struct.fast_task_info** %11, align 8
  %13 = load %struct.fast_task_info*, %struct.fast_task_info** %2, align 8
  %14 = getelementptr inbounds %struct.fast_task_info, %struct.fast_task_info* %13, i32 0, i32 1
  store %struct.fast_task_info* %12, %struct.fast_task_info** %14, align 8
  %15 = load %struct.fast_task_info*, %struct.fast_task_info** %2, align 8
  %16 = load %struct.fast_task_info*, %struct.fast_task_info** %2, align 8
  %17 = getelementptr inbounds %struct.fast_task_info, %struct.fast_task_info* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store %struct.fast_task_info* %15, %struct.fast_task_info** %19, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
