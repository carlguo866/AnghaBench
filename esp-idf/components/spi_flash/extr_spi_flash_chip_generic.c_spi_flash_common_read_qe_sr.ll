; ModuleID = '/home/carl/AnghaBench/esp-idf/components/spi_flash/extr_spi_flash_chip_generic.c_spi_flash_common_read_qe_sr.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/spi_flash/extr_spi_flash_chip_generic.c_spi_flash_common_read_qe_sr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*, %struct.TYPE_6__*)* }
%struct.TYPE_6__ = type { i32*, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i32, i32*)* @spi_flash_common_read_qe_sr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_flash_common_read_qe_sr(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i32* null, i32** %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  store i32 0, i32* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 4
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %16, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32 (%struct.TYPE_8__*, %struct.TYPE_6__*)*, i32 (%struct.TYPE_8__*, %struct.TYPE_6__*)** %21, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = call i32 %22(%struct.TYPE_8__* %25, %struct.TYPE_6__* %9)
  store i32 %26, i32* %10, align 4
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %8, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %10, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
