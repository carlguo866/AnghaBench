; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/spi/extr_core.c_spinand_load_page_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/spi/extr_core.c_spinand_load_page_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spinand_device = type { i32 }
%struct.nand_page_io_req = type { i32 }
%struct.nand_device = type { i32 }
%struct.spi_mem_op = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spinand_device*, %struct.nand_page_io_req*)* @spinand_load_page_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spinand_load_page_op(%struct.spinand_device* %0, %struct.nand_page_io_req* %1) #0 {
  %3 = alloca %struct.spinand_device*, align 8
  %4 = alloca %struct.nand_page_io_req*, align 8
  %5 = alloca %struct.nand_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.spi_mem_op, align 4
  store %struct.spinand_device* %0, %struct.spinand_device** %3, align 8
  store %struct.nand_page_io_req* %1, %struct.nand_page_io_req** %4, align 8
  %8 = load %struct.spinand_device*, %struct.spinand_device** %3, align 8
  %9 = call %struct.nand_device* @spinand_to_nand(%struct.spinand_device* %8)
  store %struct.nand_device* %9, %struct.nand_device** %5, align 8
  %10 = load %struct.nand_device*, %struct.nand_device** %5, align 8
  %11 = load %struct.nand_page_io_req*, %struct.nand_page_io_req** %4, align 8
  %12 = getelementptr inbounds %struct.nand_page_io_req, %struct.nand_page_io_req* %11, i32 0, i32 0
  %13 = call i32 @nanddev_pos_to_row(%struct.nand_device* %10, i32* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @SPINAND_PAGE_READ_OP(i32 %14)
  %16 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %7, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load %struct.spinand_device*, %struct.spinand_device** %3, align 8
  %18 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @spi_mem_exec_op(i32 %19, %struct.spi_mem_op* %7)
  ret i32 %20
}

declare dso_local %struct.nand_device* @spinand_to_nand(%struct.spinand_device*) #1

declare dso_local i32 @nanddev_pos_to_row(%struct.nand_device*, i32*) #1

declare dso_local i32 @SPINAND_PAGE_READ_OP(i32) #1

declare dso_local i32 @spi_mem_exec_op(i32, %struct.spi_mem_op*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
