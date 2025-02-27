; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isp.c_isp_core_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isp.c_isp_core_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_device = type { i64, i64 }

@ISP_SYSCONFIG_MIDLEMODE_SMARTSTANDBY = common dso_local global i32 0, align 4
@ISP_SYSCONFIG_MIDLEMODE_FORCESTANDBY = common dso_local global i32 0, align 4
@ISP_SYSCONFIG_MIDLEMODE_SHIFT = common dso_local global i32 0, align 4
@ISP_REVISION_15_0 = common dso_local global i64 0, align 8
@ISP_SYSCONFIG_AUTOIDLE = common dso_local global i32 0, align 4
@OMAP3_ISP_IOMEM_MAIN = common dso_local global i32 0, align 4
@ISP_SYSCONFIG = common dso_local global i32 0, align 4
@ISPCTRL_SBL_AUTOIDLE = common dso_local global i32 0, align 4
@ISPCTRL_SYNC_DETECT_VSRISE = common dso_local global i32 0, align 4
@ISP_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_device*, i32)* @isp_core_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp_core_init(%struct.isp_device* %0, i32 %1) #0 {
  %3 = alloca %struct.isp_device*, align 8
  %4 = alloca i32, align 4
  store %struct.isp_device* %0, %struct.isp_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @ISP_SYSCONFIG_MIDLEMODE_SMARTSTANDBY, align 4
  br label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @ISP_SYSCONFIG_MIDLEMODE_FORCESTANDBY, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  %14 = load i32, i32* @ISP_SYSCONFIG_MIDLEMODE_SHIFT, align 4
  %15 = shl i32 %13, %14
  %16 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %17 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ISP_REVISION_15_0, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %12
  %22 = load i32, i32* @ISP_SYSCONFIG_AUTOIDLE, align 4
  br label %24

23:                                               ; preds = %12
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i32 [ %22, %21 ], [ 0, %23 ]
  %26 = or i32 %15, %25
  %27 = load i32, i32* @OMAP3_ISP_IOMEM_MAIN, align 4
  %28 = load i32, i32* @ISP_SYSCONFIG, align 4
  %29 = call i32 @isp_reg_writel(%struct.isp_device* %5, i32 %26, i32 %27, i32 %28)
  %30 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %31 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %32 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = load i32, i32* @ISPCTRL_SBL_AUTOIDLE, align 4
  br label %38

37:                                               ; preds = %24
  br label %38

38:                                               ; preds = %37, %35
  %39 = phi i32 [ %36, %35 ], [ 0, %37 ]
  %40 = load i32, i32* @ISPCTRL_SYNC_DETECT_VSRISE, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @OMAP3_ISP_IOMEM_MAIN, align 4
  %43 = load i32, i32* @ISP_CTRL, align 4
  %44 = call i32 @isp_reg_writel(%struct.isp_device* %30, i32 %41, i32 %42, i32 %43)
  ret void
}

declare dso_local i32 @isp_reg_writel(%struct.isp_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
