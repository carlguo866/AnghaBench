; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_hdcp_capable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_hdcp_capable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_digital_port = type { i32 }

@DP_BCAPS_HDCP_CAPABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_digital_port*, i32*)* @intel_dp_hdcp_capable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dp_hdcp_capable(%struct.intel_digital_port* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_digital_port*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intel_digital_port* %0, %struct.intel_digital_port** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.intel_digital_port*, %struct.intel_digital_port** %4, align 8
  %9 = call i32 @intel_dp_hdcp_read_bcaps(%struct.intel_digital_port* %8, i32* %7)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %19

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @DP_BCAPS_HDCP_CAPABLE, align 4
  %17 = and i32 %15, %16
  %18 = load i32*, i32** %5, align 8
  store i32 %17, i32* %18, align 4
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %14, %12
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @intel_dp_hdcp_read_bcaps(%struct.intel_digital_port*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
