; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_qoriq_thermal.c_qoriq_tmu_init_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_qoriq_thermal.c_qoriq_tmu_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qoriq_tmu_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@TIER_DISABLE = common dso_local global i32 0, align 4
@TMTMIR_DEFAULT = common dso_local global i32 0, align 4
@TMR_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qoriq_tmu_data*)* @qoriq_tmu_init_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qoriq_tmu_init_device(%struct.qoriq_tmu_data* %0) #0 {
  %2 = alloca %struct.qoriq_tmu_data*, align 8
  store %struct.qoriq_tmu_data* %0, %struct.qoriq_tmu_data** %2, align 8
  %3 = load %struct.qoriq_tmu_data*, %struct.qoriq_tmu_data** %2, align 8
  %4 = load i32, i32* @TIER_DISABLE, align 4
  %5 = load %struct.qoriq_tmu_data*, %struct.qoriq_tmu_data** %2, align 8
  %6 = getelementptr inbounds %struct.qoriq_tmu_data, %struct.qoriq_tmu_data* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 2
  %9 = call i32 @tmu_write(%struct.qoriq_tmu_data* %3, i32 %4, i32* %8)
  %10 = load %struct.qoriq_tmu_data*, %struct.qoriq_tmu_data** %2, align 8
  %11 = load i32, i32* @TMTMIR_DEFAULT, align 4
  %12 = load %struct.qoriq_tmu_data*, %struct.qoriq_tmu_data** %2, align 8
  %13 = getelementptr inbounds %struct.qoriq_tmu_data, %struct.qoriq_tmu_data* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = call i32 @tmu_write(%struct.qoriq_tmu_data* %10, i32 %11, i32* %15)
  %17 = load %struct.qoriq_tmu_data*, %struct.qoriq_tmu_data** %2, align 8
  %18 = load i32, i32* @TMR_DISABLE, align 4
  %19 = load %struct.qoriq_tmu_data*, %struct.qoriq_tmu_data** %2, align 8
  %20 = getelementptr inbounds %struct.qoriq_tmu_data, %struct.qoriq_tmu_data* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @tmu_write(%struct.qoriq_tmu_data* %17, i32 %18, i32* %22)
  ret void
}

declare dso_local i32 @tmu_write(%struct.qoriq_tmu_data*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
