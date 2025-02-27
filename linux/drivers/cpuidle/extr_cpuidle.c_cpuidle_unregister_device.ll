; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpuidle/extr_cpuidle.c_cpuidle_unregister_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpuidle/extr_cpuidle.c_cpuidle_unregister_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_device = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpuidle_unregister_device(%struct.cpuidle_device* %0) #0 {
  %2 = alloca %struct.cpuidle_device*, align 8
  store %struct.cpuidle_device* %0, %struct.cpuidle_device** %2, align 8
  %3 = load %struct.cpuidle_device*, %struct.cpuidle_device** %2, align 8
  %4 = icmp ne %struct.cpuidle_device* %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load %struct.cpuidle_device*, %struct.cpuidle_device** %2, align 8
  %7 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %5, %1
  br label %22

11:                                               ; preds = %5
  %12 = call i32 (...) @cpuidle_pause_and_lock()
  %13 = load %struct.cpuidle_device*, %struct.cpuidle_device** %2, align 8
  %14 = call i32 @cpuidle_disable_device(%struct.cpuidle_device* %13)
  %15 = load %struct.cpuidle_device*, %struct.cpuidle_device** %2, align 8
  %16 = call i32 @cpuidle_remove_sysfs(%struct.cpuidle_device* %15)
  %17 = load %struct.cpuidle_device*, %struct.cpuidle_device** %2, align 8
  %18 = call i32 @__cpuidle_unregister_device(%struct.cpuidle_device* %17)
  %19 = load %struct.cpuidle_device*, %struct.cpuidle_device** %2, align 8
  %20 = call i32 @cpuidle_coupled_unregister_device(%struct.cpuidle_device* %19)
  %21 = call i32 (...) @cpuidle_resume_and_unlock()
  br label %22

22:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @cpuidle_pause_and_lock(...) #1

declare dso_local i32 @cpuidle_disable_device(%struct.cpuidle_device*) #1

declare dso_local i32 @cpuidle_remove_sysfs(%struct.cpuidle_device*) #1

declare dso_local i32 @__cpuidle_unregister_device(%struct.cpuidle_device*) #1

declare dso_local i32 @cpuidle_coupled_unregister_device(%struct.cpuidle_device*) #1

declare dso_local i32 @cpuidle_resume_and_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
