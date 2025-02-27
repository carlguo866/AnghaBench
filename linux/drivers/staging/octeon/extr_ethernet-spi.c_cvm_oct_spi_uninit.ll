; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet-spi.c_cvm_oct_spi_uninit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet-spi.c_cvm_oct_spi_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@number_spi_ports = common dso_local global i64 0, align 8
@OCTEON_IRQ_RML = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cvm_oct_spi_uninit(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call i32 @cvm_oct_common_uninit(%struct.net_device* %4)
  %6 = load i64, i64* @number_spi_ports, align 8
  %7 = add nsw i64 %6, -1
  store i64 %7, i64* @number_spi_ports, align 8
  %8 = load i64, i64* @number_spi_ports, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %21, %10
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %24

14:                                               ; preds = %11
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @CVMX_SPXX_INT_MSK(i32 %15)
  %17 = call i32 @cvmx_write_csr(i32 %16, i32 0)
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @CVMX_STXX_INT_MSK(i32 %18)
  %20 = call i32 @cvmx_write_csr(i32 %19, i32 0)
  br label %21

21:                                               ; preds = %14
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %11

24:                                               ; preds = %11
  %25 = load i32, i32* @OCTEON_IRQ_RML, align 4
  %26 = call i32 @free_irq(i32 %25, i64* @number_spi_ports)
  br label %27

27:                                               ; preds = %24, %1
  ret void
}

declare dso_local i32 @cvm_oct_common_uninit(%struct.net_device*) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i32 @CVMX_SPXX_INT_MSK(i32) #1

declare dso_local i32 @CVMX_STXX_INT_MSK(i32) #1

declare dso_local i32 @free_irq(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
