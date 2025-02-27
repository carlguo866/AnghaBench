; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_eeprom.c_i2c_ackrcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_eeprom.c_i2c_ackrcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32 }

@i2c_line_high = common dso_local global i32 0, align 4
@i2c_line_low = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipath_devdata*)* @i2c_ackrcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_ackrcv(%struct.ipath_devdata* %0) #0 {
  %2 = alloca %struct.ipath_devdata*, align 8
  %3 = alloca i32, align 4
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %2, align 8
  %4 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %5 = call i64 @sda_in(%struct.ipath_devdata* %4, i32 1)
  %6 = trunc i64 %5 to i32
  store i32 %6, i32* %3, align 4
  %7 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %8 = load i32, i32* @i2c_line_high, align 4
  %9 = call i32 @scl_out(%struct.ipath_devdata* %7, i32 %8)
  %10 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %11 = call i64 @sda_in(%struct.ipath_devdata* %10, i32 1)
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %3, align 4
  %14 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %15 = load i32, i32* @i2c_line_low, align 4
  %16 = call i32 @scl_out(%struct.ipath_devdata* %14, i32 %15)
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

declare dso_local i64 @sda_in(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @scl_out(%struct.ipath_devdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
