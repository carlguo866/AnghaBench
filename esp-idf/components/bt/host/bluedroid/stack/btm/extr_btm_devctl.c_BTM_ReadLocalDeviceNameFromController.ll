; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_devctl.c_BTM_ReadLocalDeviceNameFromController.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_devctl.c_BTM_ReadLocalDeviceNameFromController.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32* }

@btm_cb = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@BTM_NO_RESOURCES = common dso_local global i32 0, align 4
@BTU_TTYPE_BTM_DEV_CTL = common dso_local global i32 0, align 4
@BTM_DEV_REPLY_TIMEOUT = common dso_local global i32 0, align 4
@BTM_CMD_STARTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BTM_ReadLocalDeviceNameFromController(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 0, i32 1), align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* @BTM_NO_RESOURCES, align 4
  store i32 %7, i32* %2, align 4
  br label %15

8:                                                ; preds = %1
  %9 = load i32*, i32** %3, align 8
  store i32* %9, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 0, i32 1), align 8
  %10 = call i32 (...) @btsnd_hcic_read_name()
  %11 = load i32, i32* @BTU_TTYPE_BTM_DEV_CTL, align 4
  %12 = load i32, i32* @BTM_DEV_REPLY_TIMEOUT, align 4
  %13 = call i32 @btu_start_timer(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 0, i32 0), i32 %11, i32 %12)
  %14 = load i32, i32* @BTM_CMD_STARTED, align 4
  store i32 %14, i32* %2, align 4
  br label %15

15:                                               ; preds = %8, %6
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

declare dso_local i32 @btsnd_hcic_read_name(...) #1

declare dso_local i32 @btu_start_timer(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
