; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_ezx-pcap.c_pcap_disable_adc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_ezx-pcap.c_pcap_disable_adc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcap_chip = type { i32 }

@PCAP_REG_ADC = common dso_local global i32 0, align 4
@PCAP_ADC_ADEN = common dso_local global i32 0, align 4
@PCAP_ADC_BATT_I_ADC = common dso_local global i32 0, align 4
@PCAP_ADC_BATT_I_POLARITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcap_chip*)* @pcap_disable_adc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcap_disable_adc(%struct.pcap_chip* %0) #0 {
  %2 = alloca %struct.pcap_chip*, align 8
  %3 = alloca i32, align 4
  store %struct.pcap_chip* %0, %struct.pcap_chip** %2, align 8
  %4 = load %struct.pcap_chip*, %struct.pcap_chip** %2, align 8
  %5 = load i32, i32* @PCAP_REG_ADC, align 4
  %6 = call i32 @ezx_pcap_read(%struct.pcap_chip* %4, i32 %5, i32* %3)
  %7 = load i32, i32* @PCAP_ADC_ADEN, align 4
  %8 = load i32, i32* @PCAP_ADC_BATT_I_ADC, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @PCAP_ADC_BATT_I_POLARITY, align 4
  %11 = or i32 %9, %10
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load %struct.pcap_chip*, %struct.pcap_chip** %2, align 8
  %16 = load i32, i32* @PCAP_REG_ADC, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @ezx_pcap_write(%struct.pcap_chip* %15, i32 %16, i32 %17)
  ret void
}

declare dso_local i32 @ezx_pcap_read(%struct.pcap_chip*, i32, i32*) #1

declare dso_local i32 @ezx_pcap_write(%struct.pcap_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
