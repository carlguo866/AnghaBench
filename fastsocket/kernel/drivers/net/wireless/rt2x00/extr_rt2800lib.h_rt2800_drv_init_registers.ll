; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.h_rt2800_drv_init_registers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.h_rt2800_drv_init_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rt2800_ops* }
%struct.rt2800_ops = type { {}* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt2800_drv_init_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2800_drv_init_registers(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca %struct.rt2800_ops*, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %4 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %5 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.rt2800_ops*, %struct.rt2800_ops** %7, align 8
  store %struct.rt2800_ops* %8, %struct.rt2800_ops** %3, align 8
  %9 = load %struct.rt2800_ops*, %struct.rt2800_ops** %3, align 8
  %10 = getelementptr inbounds %struct.rt2800_ops, %struct.rt2800_ops* %9, i32 0, i32 0
  %11 = bitcast {}** %10 to i32 (%struct.rt2x00_dev*)**
  %12 = load i32 (%struct.rt2x00_dev*)*, i32 (%struct.rt2x00_dev*)** %11, align 8
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %14 = call i32 %12(%struct.rt2x00_dev* %13)
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
