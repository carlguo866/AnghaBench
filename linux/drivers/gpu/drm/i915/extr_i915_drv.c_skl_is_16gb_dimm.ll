; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_skl_is_16gb_dimm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_skl_is_16gb_dimm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dram_dimm_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dram_dimm_info*)* @skl_is_16gb_dimm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_is_16gb_dimm(%struct.dram_dimm_info* %0) #0 {
  %2 = alloca %struct.dram_dimm_info*, align 8
  store %struct.dram_dimm_info* %0, %struct.dram_dimm_info** %2, align 8
  %3 = load %struct.dram_dimm_info*, %struct.dram_dimm_info** %2, align 8
  %4 = getelementptr inbounds %struct.dram_dimm_info, %struct.dram_dimm_info* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = mul nsw i32 8, %5
  %7 = sext i32 %6 to i64
  %8 = load %struct.dram_dimm_info*, %struct.dram_dimm_info** %2, align 8
  %9 = call i64 @intel_dimm_num_devices(%struct.dram_dimm_info* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %13

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %12, %11
  %14 = phi i64 [ %9, %11 ], [ 1, %12 ]
  %15 = sdiv i64 %7, %14
  %16 = icmp eq i64 %15, 16
  %17 = zext i1 %16 to i32
  ret i32 %17
}

declare dso_local i64 @intel_dimm_num_devices(%struct.dram_dimm_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
