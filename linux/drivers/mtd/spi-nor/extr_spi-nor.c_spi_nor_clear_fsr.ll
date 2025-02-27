; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_clear_fsr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_clear_fsr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { i32 (%struct.spi_nor*, i32, i32*, i32)*, i64 }
%struct.spi_mem_op = type { i32 }

@SPINOR_OP_CLFSR = common dso_local global i32 0, align 4
@SPI_MEM_OP_NO_ADDR = common dso_local global i32 0, align 4
@SPI_MEM_OP_NO_DUMMY = common dso_local global i32 0, align 4
@SPI_MEM_OP_NO_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*)* @spi_nor_clear_fsr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_nor_clear_fsr(%struct.spi_nor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_nor*, align 8
  %4 = alloca %struct.spi_mem_op, align 4
  store %struct.spi_nor* %0, %struct.spi_nor** %3, align 8
  %5 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %6 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = load i32, i32* @SPINOR_OP_CLFSR, align 4
  %11 = call i32 @SPI_MEM_OP_CMD(i32 %10, i32 1)
  %12 = load i32, i32* @SPI_MEM_OP_NO_ADDR, align 4
  %13 = load i32, i32* @SPI_MEM_OP_NO_DUMMY, align 4
  %14 = load i32, i32* @SPI_MEM_OP_NO_DATA, align 4
  %15 = call i32 @SPI_MEM_OP(i32 %11, i32 %12, i32 %13, i32 %14)
  %16 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %4, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %18 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @spi_mem_exec_op(i64 %19, %struct.spi_mem_op* %4)
  store i32 %20, i32* %2, align 4
  br label %28

21:                                               ; preds = %1
  %22 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %23 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %22, i32 0, i32 0
  %24 = load i32 (%struct.spi_nor*, i32, i32*, i32)*, i32 (%struct.spi_nor*, i32, i32*, i32)** %23, align 8
  %25 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %26 = load i32, i32* @SPINOR_OP_CLFSR, align 4
  %27 = call i32 %24(%struct.spi_nor* %25, i32 %26, i32* null, i32 0)
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %21, %9
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @SPI_MEM_OP(i32, i32, i32, i32) #1

declare dso_local i32 @SPI_MEM_OP_CMD(i32, i32) #1

declare dso_local i32 @spi_mem_exec_op(i64, %struct.spi_mem_op*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
