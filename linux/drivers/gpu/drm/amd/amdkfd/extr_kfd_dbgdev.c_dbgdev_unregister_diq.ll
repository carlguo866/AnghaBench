; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_dbgdev.c_dbgdev_unregister_diq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_dbgdev.c_dbgdev_unregister_diq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_dbgdev = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kfd_dbgdev*)* @dbgdev_unregister_diq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbgdev_unregister_diq(%struct.kfd_dbgdev* %0) #0 {
  %2 = alloca %struct.kfd_dbgdev*, align 8
  %3 = alloca i32, align 4
  store %struct.kfd_dbgdev* %0, %struct.kfd_dbgdev** %2, align 8
  %4 = load %struct.kfd_dbgdev*, %struct.kfd_dbgdev** %2, align 8
  %5 = getelementptr inbounds %struct.kfd_dbgdev, %struct.kfd_dbgdev* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.kfd_dbgdev*, %struct.kfd_dbgdev** %2, align 8
  %8 = getelementptr inbounds %struct.kfd_dbgdev, %struct.kfd_dbgdev* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @pqm_destroy_queue(i32 %6, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load %struct.kfd_dbgdev*, %struct.kfd_dbgdev** %2, align 8
  %17 = getelementptr inbounds %struct.kfd_dbgdev, %struct.kfd_dbgdev* %16, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %17, align 8
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i32 @pqm_destroy_queue(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
