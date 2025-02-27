; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32.c_stm32f4_spi_get_bpw_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32.c_stm32f4_spi_get_bpw_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_spi = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"8-bit or 16-bit data frame supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_spi*)* @stm32f4_spi_get_bpw_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32f4_spi_get_bpw_mask(%struct.stm32_spi* %0) #0 {
  %2 = alloca %struct.stm32_spi*, align 8
  store %struct.stm32_spi* %0, %struct.stm32_spi** %2, align 8
  %3 = load %struct.stm32_spi*, %struct.stm32_spi** %2, align 8
  %4 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @dev_dbg(i32 %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @SPI_BPW_MASK(i32 8)
  %8 = call i32 @SPI_BPW_MASK(i32 16)
  %9 = or i32 %7, %8
  ret i32 %9
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @SPI_BPW_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
