; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rspi.c_qspi_receive_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rspi.c_qspi_receive_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rspi_data = type { i32 }

@RSPI_SPSR = common dso_local global i32 0, align 4
@SPSR_SPRF = common dso_local global i32 0, align 4
@SPBFCR_TXRST = common dso_local global i32 0, align 4
@SPBFCR_RXRST = common dso_local global i32 0, align 4
@QSPI_SPBFCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rspi_data*)* @qspi_receive_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qspi_receive_init(%struct.rspi_data* %0) #0 {
  %2 = alloca %struct.rspi_data*, align 8
  %3 = alloca i32, align 4
  store %struct.rspi_data* %0, %struct.rspi_data** %2, align 8
  %4 = load %struct.rspi_data*, %struct.rspi_data** %2, align 8
  %5 = load i32, i32* @RSPI_SPSR, align 4
  %6 = call i32 @rspi_read8(%struct.rspi_data* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @SPSR_SPRF, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.rspi_data*, %struct.rspi_data** %2, align 8
  %13 = call i32 @rspi_read_data(%struct.rspi_data* %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.rspi_data*, %struct.rspi_data** %2, align 8
  %16 = load i32, i32* @SPBFCR_TXRST, align 4
  %17 = load i32, i32* @SPBFCR_RXRST, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @QSPI_SPBFCR, align 4
  %20 = call i32 @rspi_write8(%struct.rspi_data* %15, i32 %18, i32 %19)
  %21 = load %struct.rspi_data*, %struct.rspi_data** %2, align 8
  %22 = load i32, i32* @QSPI_SPBFCR, align 4
  %23 = call i32 @rspi_write8(%struct.rspi_data* %21, i32 0, i32 %22)
  ret void
}

declare dso_local i32 @rspi_read8(%struct.rspi_data*, i32) #1

declare dso_local i32 @rspi_read_data(%struct.rspi_data*) #1

declare dso_local i32 @rspi_write8(%struct.rspi_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
