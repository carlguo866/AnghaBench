; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_resource.c_request_resource_conflict.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_resource.c_request_resource_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }

@resource_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.resource* @request_resource_conflict(%struct.resource* %0, %struct.resource* %1) #0 {
  %3 = alloca %struct.resource*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.resource*, align 8
  store %struct.resource* %0, %struct.resource** %3, align 8
  store %struct.resource* %1, %struct.resource** %4, align 8
  %6 = call i32 @write_lock(i32* @resource_lock)
  %7 = load %struct.resource*, %struct.resource** %3, align 8
  %8 = load %struct.resource*, %struct.resource** %4, align 8
  %9 = call %struct.resource* @__request_resource(%struct.resource* %7, %struct.resource* %8)
  store %struct.resource* %9, %struct.resource** %5, align 8
  %10 = call i32 @write_unlock(i32* @resource_lock)
  %11 = load %struct.resource*, %struct.resource** %5, align 8
  ret %struct.resource* %11
}

declare dso_local i32 @write_lock(i32*) #1

declare dso_local %struct.resource* @__request_resource(%struct.resource*, %struct.resource*) #1

declare dso_local i32 @write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
