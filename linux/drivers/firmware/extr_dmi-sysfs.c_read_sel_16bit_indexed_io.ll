; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_dmi-sysfs.c_read_sel_16bit_indexed_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_dmi-sysfs.c_read_sel_16bit_indexed_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmi_system_event_log = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@io_port_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmi_system_event_log*, i64)* @read_sel_16bit_indexed_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_sel_16bit_indexed_io(%struct.dmi_system_event_log* %0, i64 %1) #0 {
  %3 = alloca %struct.dmi_system_event_log*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.dmi_system_event_log* %0, %struct.dmi_system_event_log** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = call i32 @mutex_lock(i32* @io_port_lock)
  %7 = load i64, i64* %4, align 8
  %8 = trunc i64 %7 to i32
  %9 = load %struct.dmi_system_event_log*, %struct.dmi_system_event_log** %3, align 8
  %10 = getelementptr inbounds %struct.dmi_system_event_log, %struct.dmi_system_event_log* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @outw(i32 %8, i32 %12)
  %14 = load %struct.dmi_system_event_log*, %struct.dmi_system_event_log** %3, align 8
  %15 = getelementptr inbounds %struct.dmi_system_event_log, %struct.dmi_system_event_log* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @inb(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = call i32 @mutex_unlock(i32* @io_port_lock)
  %20 = load i32, i32* %5, align 4
  ret i32 %20
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
