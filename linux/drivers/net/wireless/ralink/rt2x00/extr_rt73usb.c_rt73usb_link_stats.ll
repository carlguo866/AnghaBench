; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt73usb.c_rt73usb_link_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt73usb.c_rt73usb_link_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.link_qual = type { i8*, i8* }

@STA_CSR0 = common dso_local global i32 0, align 4
@STA_CSR0_FCS_ERROR = common dso_local global i32 0, align 4
@STA_CSR1 = common dso_local global i32 0, align 4
@STA_CSR1_FALSE_CCA_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.link_qual*)* @rt73usb_link_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt73usb_link_stats(%struct.rt2x00_dev* %0, %struct.link_qual* %1) #0 {
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca %struct.link_qual*, align 8
  %5 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store %struct.link_qual* %1, %struct.link_qual** %4, align 8
  %6 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %7 = load i32, i32* @STA_CSR0, align 4
  %8 = call i32 @rt2x00usb_register_read(%struct.rt2x00_dev* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @STA_CSR0_FCS_ERROR, align 4
  %11 = call i8* @rt2x00_get_field32(i32 %9, i32 %10)
  %12 = load %struct.link_qual*, %struct.link_qual** %4, align 8
  %13 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %12, i32 0, i32 1
  store i8* %11, i8** %13, align 8
  %14 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %15 = load i32, i32* @STA_CSR1, align 4
  %16 = call i32 @rt2x00usb_register_read(%struct.rt2x00_dev* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @STA_CSR1_FALSE_CCA_ERROR, align 4
  %19 = call i8* @rt2x00_get_field32(i32 %17, i32 %18)
  %20 = load %struct.link_qual*, %struct.link_qual** %4, align 8
  %21 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  ret void
}

declare dso_local i32 @rt2x00usb_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i8* @rt2x00_get_field32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
