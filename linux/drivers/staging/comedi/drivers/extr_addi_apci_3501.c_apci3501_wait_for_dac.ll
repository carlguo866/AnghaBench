; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_3501.c_apci3501_wait_for_dac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_3501.c_apci3501_wait_for_dac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }

@APCI3501_AO_CTRL_STATUS_REG = common dso_local global i64 0, align 8
@APCI3501_AO_STATUS_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @apci3501_wait_for_dac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apci3501_wait_for_dac(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  br label %4

4:                                                ; preds = %11, %1
  %5 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %6 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @APCI3501_AO_CTRL_STATUS_REG, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @inl(i64 %9)
  store i32 %10, i32* %3, align 4
  br label %11

11:                                               ; preds = %4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @APCI3501_AO_STATUS_READY, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br i1 %16, label %4, label %17

17:                                               ; preds = %11
  ret i32 0
}

declare dso_local i32 @inl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
