; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_machine__new_host.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_machine__new_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machine = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HOST_KERNEL_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.machine* @machine__new_host() #0 {
  %1 = alloca %struct.machine*, align 8
  %2 = alloca %struct.machine*, align 8
  %3 = call %struct.machine* @malloc(i32 4)
  store %struct.machine* %3, %struct.machine** %2, align 8
  %4 = load %struct.machine*, %struct.machine** %2, align 8
  %5 = icmp ne %struct.machine* %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %0
  %7 = load %struct.machine*, %struct.machine** %2, align 8
  %8 = load i32, i32* @HOST_KERNEL_ID, align 4
  %9 = call i32 @machine__init(%struct.machine* %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.machine*, %struct.machine** %2, align 8
  %11 = call i64 @machine__create_kernel_maps(%struct.machine* %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  br label %17

14:                                               ; preds = %6
  br label %15

15:                                               ; preds = %14, %0
  %16 = load %struct.machine*, %struct.machine** %2, align 8
  store %struct.machine* %16, %struct.machine** %1, align 8
  br label %20

17:                                               ; preds = %13
  %18 = load %struct.machine*, %struct.machine** %2, align 8
  %19 = call i32 @free(%struct.machine* %18)
  store %struct.machine* null, %struct.machine** %1, align 8
  br label %20

20:                                               ; preds = %17, %15
  %21 = load %struct.machine*, %struct.machine** %1, align 8
  ret %struct.machine* %21
}

declare dso_local %struct.machine* @malloc(i32) #1

declare dso_local i32 @machine__init(%struct.machine*, i8*, i32) #1

declare dso_local i64 @machine__create_kernel_maps(%struct.machine*) #1

declare dso_local i32 @free(%struct.machine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
