; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-qcom.c_dwc3_qcom_vbus_overrride_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-qcom.c_dwc3_qcom_vbus_overrride_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3_qcom = type { i32 }

@QSCRATCH_SS_PHY_CTRL = common dso_local global i32 0, align 4
@LANE0_PWR_PRESENT = common dso_local global i32 0, align 4
@QSCRATCH_HS_PHY_CTRL = common dso_local global i32 0, align 4
@UTMI_OTG_VBUS_VALID = common dso_local global i32 0, align 4
@SW_SESSVLD_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc3_qcom*, i32)* @dwc3_qcom_vbus_overrride_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc3_qcom_vbus_overrride_enable(%struct.dwc3_qcom* %0, i32 %1) #0 {
  %3 = alloca %struct.dwc3_qcom*, align 8
  %4 = alloca i32, align 4
  store %struct.dwc3_qcom* %0, %struct.dwc3_qcom** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %2
  %8 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %3, align 8
  %9 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @QSCRATCH_SS_PHY_CTRL, align 4
  %12 = load i32, i32* @LANE0_PWR_PRESENT, align 4
  %13 = call i32 @dwc3_qcom_setbits(i32 %10, i32 %11, i32 %12)
  %14 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %3, align 8
  %15 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @QSCRATCH_HS_PHY_CTRL, align 4
  %18 = load i32, i32* @UTMI_OTG_VBUS_VALID, align 4
  %19 = load i32, i32* @SW_SESSVLD_SEL, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @dwc3_qcom_setbits(i32 %16, i32 %17, i32 %20)
  br label %37

22:                                               ; preds = %2
  %23 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %3, align 8
  %24 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @QSCRATCH_SS_PHY_CTRL, align 4
  %27 = load i32, i32* @LANE0_PWR_PRESENT, align 4
  %28 = call i32 @dwc3_qcom_clrbits(i32 %25, i32 %26, i32 %27)
  %29 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %3, align 8
  %30 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @QSCRATCH_HS_PHY_CTRL, align 4
  %33 = load i32, i32* @UTMI_OTG_VBUS_VALID, align 4
  %34 = load i32, i32* @SW_SESSVLD_SEL, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @dwc3_qcom_clrbits(i32 %31, i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %22, %7
  ret void
}

declare dso_local i32 @dwc3_qcom_setbits(i32, i32, i32) #1

declare dso_local i32 @dwc3_qcom_clrbits(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
