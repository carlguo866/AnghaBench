; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_throttling.c_acpi_get_throttling_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_throttling.c_acpi_get_throttling_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_processor = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }
%struct.acpi_processor_tx_tss = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_processor*, i32, i32*)* @acpi_get_throttling_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_get_throttling_value(%struct.acpi_processor* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.acpi_processor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.acpi_processor_tx_tss*, align 8
  store %struct.acpi_processor* %0, %struct.acpi_processor** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 -1, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.acpi_processor*, %struct.acpi_processor** %4, align 8
  %14 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sle i32 %12, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %11
  %19 = load %struct.acpi_processor*, %struct.acpi_processor** %4, align 8
  %20 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = bitcast i32* %25 to %struct.acpi_processor_tx_tss*
  store %struct.acpi_processor_tx_tss* %26, %struct.acpi_processor_tx_tss** %8, align 8
  %27 = load %struct.acpi_processor_tx_tss*, %struct.acpi_processor_tx_tss** %8, align 8
  %28 = getelementptr inbounds %struct.acpi_processor_tx_tss, %struct.acpi_processor_tx_tss* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %6, align 8
  store i32 %29, i32* %30, align 4
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %18, %11, %3
  %32 = load i32, i32* %7, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
