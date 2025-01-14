; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800usb.c_rt2800usb_read_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800usb.c_rt2800usb_read_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@EEPROM_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt2800usb_read_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2800usb_read_eeprom(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %4 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %5 = call i64 @rt2800_efuse_detect(%struct.rt2x00_dev* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %9 = call i32 @rt2800_read_eeprom_efuse(%struct.rt2x00_dev* %8)
  store i32 %9, i32* %3, align 4
  br label %17

10:                                               ; preds = %1
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %13 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @EEPROM_SIZE, align 4
  %16 = call i32 @rt2x00usb_eeprom_read(%struct.rt2x00_dev* %11, i32 %14, i32 %15)
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %10, %7
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i64 @rt2800_efuse_detect(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_read_eeprom_efuse(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00usb_eeprom_read(%struct.rt2x00_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
