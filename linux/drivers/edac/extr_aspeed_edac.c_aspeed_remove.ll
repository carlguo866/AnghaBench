; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_aspeed_edac.c_aspeed_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_aspeed_edac.c_aspeed_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mem_ctl_info = type { i32 }

@aspeed_regmap = common dso_local global i32 0, align 4
@ASPEED_MCR_INTR_CTRL = common dso_local global i32 0, align 4
@ASPEED_MCR_INTR_CTRL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @aspeed_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mem_ctl_info*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load i32, i32* @aspeed_regmap, align 4
  %5 = load i32, i32* @ASPEED_MCR_INTR_CTRL, align 4
  %6 = load i32, i32* @ASPEED_MCR_INTR_CTRL_ENABLE, align 4
  %7 = call i32 @regmap_update_bits(i32 %4, i32 %5, i32 %6, i32 0)
  %8 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.mem_ctl_info* @edac_mc_del_mc(i32* %9)
  store %struct.mem_ctl_info* %10, %struct.mem_ctl_info** %3, align 8
  %11 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %12 = icmp ne %struct.mem_ctl_info* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %15 = call i32 @edac_mc_free(%struct.mem_ctl_info* %14)
  br label %16

16:                                               ; preds = %13, %1
  ret i32 0
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local %struct.mem_ctl_info* @edac_mc_del_mc(i32*) #1

declare dso_local i32 @edac_mc_free(%struct.mem_ctl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
