; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/hcic/extr_hcicmds.c_btsnd_hcic_exit_park_mode.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/hcic/extr_hcicmds.c_btsnd_hcic_exit_park_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@HCIC_PARAM_SIZE_CMD_HANDLE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@HCIC_PREAMBLE_SIZE = common dso_local global i64 0, align 8
@HCI_EXIT_PARK_MODE = common dso_local global i32 0, align 4
@LOCAL_BR_EDR_CONTROLLER_ID = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btsnd_hcic_exit_park_mode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i64, i64* @HCIC_PARAM_SIZE_CMD_HANDLE, align 8
  %7 = call %struct.TYPE_4__* @HCI_GET_CMD_BUF(i64 %6)
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %4, align 8
  %8 = icmp eq %struct.TYPE_4__* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %2, align 4
  br label %35

11:                                               ; preds = %1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i64 1
  %14 = bitcast %struct.TYPE_4__* %13 to i32*
  store i32* %14, i32** %5, align 8
  %15 = load i64, i64* @HCIC_PREAMBLE_SIZE, align 8
  %16 = load i64, i64* @HCIC_PARAM_SIZE_CMD_HANDLE, align 8
  %17 = add nsw i64 %15, %16
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @HCI_EXIT_PARK_MODE, align 4
  %24 = call i32 @UINT16_TO_STREAM(i32* %22, i32 %23)
  %25 = load i32*, i32** %5, align 8
  %26 = load i64, i64* @HCIC_PARAM_SIZE_CMD_HANDLE, align 8
  %27 = call i32 @UINT8_TO_STREAM(i32* %25, i64 %26)
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @UINT16_TO_STREAM(i32* %28, i32 %29)
  %31 = load i32, i32* @LOCAL_BR_EDR_CONTROLLER_ID, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = call i32 @btu_hcif_send_cmd(i32 %31, %struct.TYPE_4__* %32)
  %34 = load i32, i32* @TRUE, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %11, %9
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.TYPE_4__* @HCI_GET_CMD_BUF(i64) #1

declare dso_local i32 @UINT16_TO_STREAM(i32*, i32) #1

declare dso_local i32 @UINT8_TO_STREAM(i32*, i64) #1

declare dso_local i32 @btu_hcif_send_cmd(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
