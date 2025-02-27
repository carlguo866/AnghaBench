; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw/extr_acpi.c_dw_dma_acpi_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw/extr_acpi.c_dw_dma_acpi_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.acpi_dma_spec = type { i32, i32 }
%struct.dw_dma_slave = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i8*)* @dw_dma_acpi_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_dma_acpi_filter(%struct.dma_chan* %0, i8* %1) #0 {
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.acpi_dma_spec*, align 8
  %6 = alloca %struct.dw_dma_slave, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.acpi_dma_spec*
  store %struct.acpi_dma_spec* %8, %struct.acpi_dma_spec** %5, align 8
  %9 = getelementptr inbounds %struct.dw_dma_slave, %struct.dw_dma_slave* %6, i32 0, i32 0
  store i32 1, i32* %9, align 4
  %10 = getelementptr inbounds %struct.dw_dma_slave, %struct.dw_dma_slave* %6, i32 0, i32 1
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.dw_dma_slave, %struct.dw_dma_slave* %6, i32 0, i32 2
  %12 = load %struct.acpi_dma_spec*, %struct.acpi_dma_spec** %5, align 8
  %13 = getelementptr inbounds %struct.acpi_dma_spec, %struct.acpi_dma_spec* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %11, align 4
  %15 = getelementptr inbounds %struct.dw_dma_slave, %struct.dw_dma_slave* %6, i32 0, i32 3
  %16 = load %struct.acpi_dma_spec*, %struct.acpi_dma_spec** %5, align 8
  %17 = getelementptr inbounds %struct.acpi_dma_spec, %struct.acpi_dma_spec* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %15, align 4
  %19 = getelementptr inbounds %struct.dw_dma_slave, %struct.dw_dma_slave* %6, i32 0, i32 4
  %20 = load %struct.acpi_dma_spec*, %struct.acpi_dma_spec** %5, align 8
  %21 = getelementptr inbounds %struct.acpi_dma_spec, %struct.acpi_dma_spec* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %19, align 4
  %23 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %24 = call i32 @dw_dma_filter(%struct.dma_chan* %23, %struct.dw_dma_slave* %6)
  ret i32 %24
}

declare dso_local i32 @dw_dma_filter(%struct.dma_chan*, %struct.dw_dma_slave*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
