; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_dco_itrim_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_dco_itrim_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.conf_itrim_settings }
%struct.conf_itrim_settings = type { i32, i32 }
%struct.acx_dco_itrim_params = type { i32, i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"acx dco itrim parameters\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACX_SET_DCO_ITRIM_PARAMS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"failed to set dco itrim parameters: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_acx_dco_itrim_params(%struct.wl1271* %0) #0 {
  %2 = alloca %struct.wl1271*, align 8
  %3 = alloca %struct.acx_dco_itrim_params*, align 8
  %4 = alloca %struct.conf_itrim_settings*, align 8
  %5 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %2, align 8
  %6 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %7 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.conf_itrim_settings* %8, %struct.conf_itrim_settings** %4, align 8
  %9 = load i32, i32* @DEBUG_ACX, align 4
  %10 = call i32 @wl1271_debug(i32 %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.acx_dco_itrim_params* @kzalloc(i32 8, i32 %11)
  store %struct.acx_dco_itrim_params* %12, %struct.acx_dco_itrim_params** %3, align 8
  %13 = load %struct.acx_dco_itrim_params*, %struct.acx_dco_itrim_params** %3, align 8
  %14 = icmp ne %struct.acx_dco_itrim_params* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %40

18:                                               ; preds = %1
  %19 = load %struct.conf_itrim_settings*, %struct.conf_itrim_settings** %4, align 8
  %20 = getelementptr inbounds %struct.conf_itrim_settings, %struct.conf_itrim_settings* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.acx_dco_itrim_params*, %struct.acx_dco_itrim_params** %3, align 8
  %23 = getelementptr inbounds %struct.acx_dco_itrim_params, %struct.acx_dco_itrim_params* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.conf_itrim_settings*, %struct.conf_itrim_settings** %4, align 8
  %25 = getelementptr inbounds %struct.conf_itrim_settings, %struct.conf_itrim_settings* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @cpu_to_le32(i32 %26)
  %28 = load %struct.acx_dco_itrim_params*, %struct.acx_dco_itrim_params** %3, align 8
  %29 = getelementptr inbounds %struct.acx_dco_itrim_params, %struct.acx_dco_itrim_params* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %31 = load i32, i32* @ACX_SET_DCO_ITRIM_PARAMS, align 4
  %32 = load %struct.acx_dco_itrim_params*, %struct.acx_dco_itrim_params** %3, align 8
  %33 = call i32 @wl1271_cmd_configure(%struct.wl1271* %30, i32 %31, %struct.acx_dco_itrim_params* %32, i32 8)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %18
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @wl1271_warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %40

39:                                               ; preds = %18
  br label %40

40:                                               ; preds = %39, %36, %15
  %41 = load %struct.acx_dco_itrim_params*, %struct.acx_dco_itrim_params** %3, align 8
  %42 = call i32 @kfree(%struct.acx_dco_itrim_params* %41)
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local %struct.acx_dco_itrim_params* @kzalloc(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @wl1271_cmd_configure(%struct.wl1271*, i32, %struct.acx_dco_itrim_params*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.acx_dco_itrim_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
