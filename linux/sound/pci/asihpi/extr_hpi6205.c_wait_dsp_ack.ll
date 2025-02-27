; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6205.c_wait_dsp_ack.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6205.c_wait_dsp_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_hw_obj = type { %struct.bus_master_interface* }
%struct.bus_master_interface = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpi_hw_obj*, i32, i32)* @wait_dsp_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_dsp_ack(%struct.hpi_hw_obj* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hpi_hw_obj*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bus_master_interface*, align 8
  %8 = alloca i32, align 4
  store %struct.hpi_hw_obj* %0, %struct.hpi_hw_obj** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %4, align 8
  %10 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %9, i32 0, i32 0
  %11 = load %struct.bus_master_interface*, %struct.bus_master_interface** %10, align 8
  store %struct.bus_master_interface* %11, %struct.bus_master_interface** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sdiv i32 %12, 4
  store i32 %13, i32* %8, align 4
  %14 = call i32 (...) @rmb()
  br label %15

15:                                               ; preds = %27, %3
  %16 = load %struct.bus_master_interface*, %struct.bus_master_interface** %7, align 8
  %17 = getelementptr inbounds %struct.bus_master_interface, %struct.bus_master_interface* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i32, i32* %8, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %21, %15
  %26 = phi i1 [ false, %15 ], [ %24, %21 ]
  br i1 %26, label %27, label %30

27:                                               ; preds = %25
  %28 = call i32 @hpios_delay_micro_seconds(i32 4)
  %29 = call i32 (...) @rmb()
  br label %15

30:                                               ; preds = %25
  %31 = load i32, i32* %8, align 4
  %32 = mul nsw i32 %31, 4
  ret i32 %32
}

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @hpios_delay_micro_seconds(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
