; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_set_inconnection_sta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_set_inconnection_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i32 }
%struct.wl1271_acx_inconnection_sta = type { i32, i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"acx set inconnaction sta %pM\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@ACX_UPDATE_INCONNECTION_STA_LIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"acx set inconnaction sta failed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_acx_set_inconnection_sta(%struct.wl1271* %0, %struct.wl12xx_vif* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca %struct.wl12xx_vif*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.wl1271_acx_inconnection_sta*, align 8
  %9 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %5, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.wl1271_acx_inconnection_sta* null, %struct.wl1271_acx_inconnection_sta** %8, align 8
  %10 = load i32, i32* @DEBUG_ACX, align 4
  %11 = load i32*, i32** %7, align 8
  %12 = call i32 @wl1271_debug(i32 %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32* %11)
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.wl1271_acx_inconnection_sta* @kzalloc(i32 8, i32 %13)
  store %struct.wl1271_acx_inconnection_sta* %14, %struct.wl1271_acx_inconnection_sta** %8, align 8
  %15 = load %struct.wl1271_acx_inconnection_sta*, %struct.wl1271_acx_inconnection_sta** %8, align 8
  %16 = icmp ne %struct.wl1271_acx_inconnection_sta* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %46

20:                                               ; preds = %3
  %21 = load %struct.wl1271_acx_inconnection_sta*, %struct.wl1271_acx_inconnection_sta** %8, align 8
  %22 = getelementptr inbounds %struct.wl1271_acx_inconnection_sta, %struct.wl1271_acx_inconnection_sta* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* @ETH_ALEN, align 4
  %26 = call i32 @memcpy(i32 %23, i32* %24, i32 %25)
  %27 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %28 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.wl1271_acx_inconnection_sta*, %struct.wl1271_acx_inconnection_sta** %8, align 8
  %31 = getelementptr inbounds %struct.wl1271_acx_inconnection_sta, %struct.wl1271_acx_inconnection_sta* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %33 = load i32, i32* @ACX_UPDATE_INCONNECTION_STA_LIST, align 4
  %34 = load %struct.wl1271_acx_inconnection_sta*, %struct.wl1271_acx_inconnection_sta** %8, align 8
  %35 = call i32 @wl1271_cmd_configure(%struct.wl1271* %32, i32 %33, %struct.wl1271_acx_inconnection_sta* %34, i32 8)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %20
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @wl1271_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %42

41:                                               ; preds = %20
  br label %42

42:                                               ; preds = %41, %38
  %43 = load %struct.wl1271_acx_inconnection_sta*, %struct.wl1271_acx_inconnection_sta** %8, align 8
  %44 = call i32 @kfree(%struct.wl1271_acx_inconnection_sta* %43)
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %42, %17
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @wl1271_debug(i32, i8*, i32*) #1

declare dso_local %struct.wl1271_acx_inconnection_sta* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @wl1271_cmd_configure(%struct.wl1271*, i32, %struct.wl1271_acx_inconnection_sta*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.wl1271_acx_inconnection_sta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
