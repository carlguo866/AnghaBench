; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_mgr_enable_cpr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_mgr_enable_cpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispc_device = type { i32 }

@OMAP_DSS_CHANNEL_DIGIT = common dso_local global i32 0, align 4
@DISPC_MGR_FLD_CPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dispc_device*, i32, i32)* @dispc_mgr_enable_cpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispc_mgr_enable_cpr(%struct.dispc_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dispc_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dispc_device* %0, %struct.dispc_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @OMAP_DSS_CHANNEL_DIGIT, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %17

11:                                               ; preds = %3
  %12 = load %struct.dispc_device*, %struct.dispc_device** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @DISPC_MGR_FLD_CPR, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @mgr_fld_write(%struct.dispc_device* %12, i32 %13, i32 %14, i32 %15)
  br label %17

17:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @mgr_fld_write(%struct.dispc_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
