; ModuleID = '/home/carl/AnghaBench/esp-idf/components/spi_flash/extr_spi_flash_chip_issi.c_spi_flash_chip_issi_probe.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/spi_flash/extr_spi_flash_chip_issi.c_spi_flash_chip_issi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_ERR_NOT_FOUND = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spi_flash_chip_issi_probe(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 157, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = ashr i32 %9, 16
  %11 = icmp ne i32 %10, 157
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @ESP_ERR_NOT_FOUND, align 4
  store i32 %13, i32* %3, align 4
  br label %22

14:                                               ; preds = %2
  store i32 52992, i32* %7, align 4
  store i32 16384, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 52992
  %17 = icmp ne i32 %16, 16384
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @ESP_ERR_NOT_FOUND, align 4
  store i32 %19, i32* %3, align 4
  br label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @ESP_OK, align 4
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %20, %18, %12
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
