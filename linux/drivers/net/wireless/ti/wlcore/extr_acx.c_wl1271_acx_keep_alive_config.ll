; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_keep_alive_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_keep_alive_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.wl12xx_vif = type { i32 }
%struct.wl1271_acx_keep_alive_config = type { i32, i8*, i8*, i32, i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"acx keep alive config\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACX_KEEP_ALIVE_NO_TX = common dso_local global i32 0, align 4
@ACX_SET_KEEP_ALIVE_CONFIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"acx keep alive config failed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_acx_keep_alive_config(%struct.wl1271* %0, %struct.wl12xx_vif* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca %struct.wl12xx_vif*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.wl1271_acx_keep_alive_config*, align 8
  %10 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %5, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store %struct.wl1271_acx_keep_alive_config* null, %struct.wl1271_acx_keep_alive_config** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* @DEBUG_ACX, align 4
  %12 = call i32 @wl1271_debug(i32 %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.wl1271_acx_keep_alive_config* @kzalloc(i32 32, i32 %13)
  store %struct.wl1271_acx_keep_alive_config* %14, %struct.wl1271_acx_keep_alive_config** %9, align 8
  %15 = load %struct.wl1271_acx_keep_alive_config*, %struct.wl1271_acx_keep_alive_config** %9, align 8
  %16 = icmp ne %struct.wl1271_acx_keep_alive_config* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %10, align 4
  br label %53

20:                                               ; preds = %4
  %21 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %22 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.wl1271_acx_keep_alive_config*, %struct.wl1271_acx_keep_alive_config** %9, align 8
  %25 = getelementptr inbounds %struct.wl1271_acx_keep_alive_config, %struct.wl1271_acx_keep_alive_config* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  %26 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %27 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @cpu_to_le32(i32 %30)
  %32 = load %struct.wl1271_acx_keep_alive_config*, %struct.wl1271_acx_keep_alive_config** %9, align 8
  %33 = getelementptr inbounds %struct.wl1271_acx_keep_alive_config, %struct.wl1271_acx_keep_alive_config* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.wl1271_acx_keep_alive_config*, %struct.wl1271_acx_keep_alive_config** %9, align 8
  %36 = getelementptr inbounds %struct.wl1271_acx_keep_alive_config, %struct.wl1271_acx_keep_alive_config* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load %struct.wl1271_acx_keep_alive_config*, %struct.wl1271_acx_keep_alive_config** %9, align 8
  %39 = getelementptr inbounds %struct.wl1271_acx_keep_alive_config, %struct.wl1271_acx_keep_alive_config* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load i32, i32* @ACX_KEEP_ALIVE_NO_TX, align 4
  %41 = load %struct.wl1271_acx_keep_alive_config*, %struct.wl1271_acx_keep_alive_config** %9, align 8
  %42 = getelementptr inbounds %struct.wl1271_acx_keep_alive_config, %struct.wl1271_acx_keep_alive_config* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %44 = load i32, i32* @ACX_SET_KEEP_ALIVE_CONFIG, align 4
  %45 = load %struct.wl1271_acx_keep_alive_config*, %struct.wl1271_acx_keep_alive_config** %9, align 8
  %46 = call i32 @wl1271_cmd_configure(%struct.wl1271* %43, i32 %44, %struct.wl1271_acx_keep_alive_config* %45, i32 32)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %20
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @wl1271_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %53

52:                                               ; preds = %20
  br label %53

53:                                               ; preds = %52, %49, %17
  %54 = load %struct.wl1271_acx_keep_alive_config*, %struct.wl1271_acx_keep_alive_config** %9, align 8
  %55 = call i32 @kfree(%struct.wl1271_acx_keep_alive_config* %54)
  %56 = load i32, i32* %10, align 4
  ret i32 %56
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local %struct.wl1271_acx_keep_alive_config* @kzalloc(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @wl1271_cmd_configure(%struct.wl1271*, i32, %struct.wl1271_acx_keep_alive_config*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.wl1271_acx_keep_alive_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
