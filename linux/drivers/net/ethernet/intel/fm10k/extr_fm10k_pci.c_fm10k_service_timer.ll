; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_service_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_service_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_intfc = type { i32 }
%struct.timer_list = type { i32 }

@service_timer = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@interface = common dso_local global %struct.fm10k_intfc* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @fm10k_service_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_service_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.fm10k_intfc*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %5 = ptrtoint %struct.fm10k_intfc* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @service_timer, align 4
  %8 = call %struct.fm10k_intfc* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.fm10k_intfc* %8, %struct.fm10k_intfc** %3, align 8
  %9 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %10 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %9, i32 0, i32 0
  %11 = load i32, i32* @HZ, align 4
  %12 = mul nsw i32 %11, 2
  %13 = sext i32 %12 to i64
  %14 = load i64, i64* @jiffies, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @mod_timer(i32* %10, i64 %15)
  %17 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %18 = call i32 @fm10k_service_event_schedule(%struct.fm10k_intfc* %17)
  ret void
}

declare dso_local %struct.fm10k_intfc* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @fm10k_service_event_schedule(%struct.fm10k_intfc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
