; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_cadence-quadspi.c_cqspi_write_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_cadence-quadspi.c_cqspi_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*, i32, i32*, i32)* @cqspi_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cqspi_write_reg(%struct.spi_nor* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.spi_nor*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.spi_nor* %0, %struct.spi_nor** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %11 = call i32 @cqspi_set_protocol(%struct.spi_nor* %10, i32 0)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %4
  %15 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @cqspi_command_write(%struct.spi_nor* %15, i32 %16, i32* %17, i32 %18)
  store i32 %19, i32* %9, align 4
  br label %20

20:                                               ; preds = %14, %4
  %21 = load i32, i32* %9, align 4
  ret i32 %21
}

declare dso_local i32 @cqspi_set_protocol(%struct.spi_nor*, i32) #1

declare dso_local i32 @cqspi_command_write(%struct.spi_nor*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
