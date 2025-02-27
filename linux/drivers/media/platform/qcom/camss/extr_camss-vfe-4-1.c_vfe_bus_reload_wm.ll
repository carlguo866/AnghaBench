; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe-4-1.c_vfe_bus_reload_wm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe-4-1.c_vfe_bus_reload_wm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfe_device = type { i64 }

@VFE_0_BUS_CMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_device*, i32)* @vfe_bus_reload_wm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_bus_reload_wm(%struct.vfe_device* %0, i32 %1) #0 {
  %3 = alloca %struct.vfe_device*, align 8
  %4 = alloca i32, align 4
  store %struct.vfe_device* %0, %struct.vfe_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 (...) @wmb()
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @VFE_0_BUS_CMD_Mx_RLD_CMD(i32 %6)
  %8 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %9 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @VFE_0_BUS_CMD, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @writel_relaxed(i32 %7, i64 %12)
  %14 = call i32 (...) @wmb()
  ret void
}

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @VFE_0_BUS_CMD_Mx_RLD_CMD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
