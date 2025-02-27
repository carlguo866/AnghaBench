; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpuidle/extr_cpuidle-haltpoll.c_haltpoll_uninit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpuidle/extr_cpuidle-haltpoll.c_haltpoll_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@haltpoll_hp_state = common dso_local global i64 0, align 8
@haltpoll_driver = common dso_local global i32 0, align 4
@haltpoll_cpuidle_devices = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @haltpoll_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @haltpoll_uninit() #0 {
  %1 = load i64, i64* @haltpoll_hp_state, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i64, i64* @haltpoll_hp_state, align 8
  %5 = call i32 @cpuhp_remove_state(i64 %4)
  br label %6

6:                                                ; preds = %3, %0
  %7 = call i32 @cpuidle_unregister_driver(i32* @haltpoll_driver)
  %8 = load i32*, i32** @haltpoll_cpuidle_devices, align 8
  %9 = call i32 @free_percpu(i32* %8)
  store i32* null, i32** @haltpoll_cpuidle_devices, align 8
  ret void
}

declare dso_local i32 @cpuhp_remove_state(i64) #1

declare dso_local i32 @cpuidle_unregister_driver(i32*) #1

declare dso_local i32 @free_percpu(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
