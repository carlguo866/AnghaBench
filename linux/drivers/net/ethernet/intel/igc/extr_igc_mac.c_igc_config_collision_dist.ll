; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_mac.c_igc_config_collision_dist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_mac.c_igc_config_collision_dist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_hw = type { i32 }

@IGC_TCTL = common dso_local global i32 0, align 4
@IGC_TCTL_COLD = common dso_local global i32 0, align 4
@IGC_COLLISION_DISTANCE = common dso_local global i32 0, align 4
@IGC_COLD_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @igc_config_collision_dist(%struct.igc_hw* %0) #0 {
  %2 = alloca %struct.igc_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.igc_hw* %0, %struct.igc_hw** %2, align 8
  %4 = load i32, i32* @IGC_TCTL, align 4
  %5 = call i32 @rd32(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @IGC_TCTL_COLD, align 4
  %7 = xor i32 %6, -1
  %8 = load i32, i32* %3, align 4
  %9 = and i32 %8, %7
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @IGC_COLLISION_DISTANCE, align 4
  %11 = load i32, i32* @IGC_COLD_SHIFT, align 4
  %12 = shl i32 %10, %11
  %13 = load i32, i32* %3, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @IGC_TCTL, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @wr32(i32 %15, i32 %16)
  %18 = call i32 (...) @wrfl()
  ret void
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @wrfl(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
