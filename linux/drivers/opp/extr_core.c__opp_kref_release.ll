; ModuleID = '/home/carl/AnghaBench/linux/drivers/opp/extr_core.c__opp_kref_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/opp/extr_core.c__opp_kref_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_pm_opp = type { i32 }
%struct.opp_table = type { i32 }

@OPP_EVENT_REMOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dev_pm_opp*, %struct.opp_table*)* @_opp_kref_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_opp_kref_release(%struct.dev_pm_opp* %0, %struct.opp_table* %1) #0 {
  %3 = alloca %struct.dev_pm_opp*, align 8
  %4 = alloca %struct.opp_table*, align 8
  store %struct.dev_pm_opp* %0, %struct.dev_pm_opp** %3, align 8
  store %struct.opp_table* %1, %struct.opp_table** %4, align 8
  %5 = load %struct.opp_table*, %struct.opp_table** %4, align 8
  %6 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %5, i32 0, i32 0
  %7 = load i32, i32* @OPP_EVENT_REMOVE, align 4
  %8 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %3, align 8
  %9 = call i32 @blocking_notifier_call_chain(i32* %6, i32 %7, %struct.dev_pm_opp* %8)
  %10 = load %struct.opp_table*, %struct.opp_table** %4, align 8
  %11 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %3, align 8
  %12 = call i32 @_of_opp_free_required_opps(%struct.opp_table* %10, %struct.dev_pm_opp* %11)
  %13 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %3, align 8
  %14 = call i32 @opp_debug_remove_one(%struct.dev_pm_opp* %13)
  %15 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %3, align 8
  %16 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %15, i32 0, i32 0
  %17 = call i32 @list_del(i32* %16)
  %18 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %3, align 8
  %19 = call i32 @kfree(%struct.dev_pm_opp* %18)
  ret void
}

declare dso_local i32 @blocking_notifier_call_chain(i32*, i32, %struct.dev_pm_opp*) #1

declare dso_local i32 @_of_opp_free_required_opps(%struct.opp_table*, %struct.dev_pm_opp*) #1

declare dso_local i32 @opp_debug_remove_one(%struct.dev_pm_opp*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.dev_pm_opp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
