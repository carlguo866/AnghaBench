; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_serial_cs.c_quirk_config_nokia.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_serial_cs.c_quirk_config_nokia.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.serial_info* }
%struct.serial_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcmcia_device*)* @quirk_config_nokia to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quirk_config_nokia(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.pcmcia_device*, align 8
  %3 = alloca %struct.serial_info*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %2, align 8
  %4 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %5 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %4, i32 0, i32 0
  %6 = load %struct.serial_info*, %struct.serial_info** %5, align 8
  store %struct.serial_info* %6, %struct.serial_info** %3, align 8
  %7 = load %struct.serial_info*, %struct.serial_info** %3, align 8
  %8 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.serial_info*, %struct.serial_info** %3, align 8
  %13 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  br label %14

14:                                               ; preds = %11, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
