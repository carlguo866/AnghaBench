; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_dlc_get_modem_status.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_dlc_get_modem_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_dlc = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"dlc %p state %ld v24_sig 0x%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rfcomm_dlc_get_modem_status(%struct.rfcomm_dlc* %0, i32* %1) #0 {
  %3 = alloca %struct.rfcomm_dlc*, align 8
  %4 = alloca i32*, align 8
  store %struct.rfcomm_dlc* %0, %struct.rfcomm_dlc** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %6 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %7 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %10 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @BT_DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_dlc* %5, i32 %8, i32 %11)
  %13 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %14 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %4, align 8
  store i32 %15, i32* %16, align 4
  ret i32 0
}

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_dlc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
