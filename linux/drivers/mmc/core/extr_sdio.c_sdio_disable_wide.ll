; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio.c_sdio_disable_wide.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio.c_sdio_disable_wide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i64 }

@MMC_CAP_4_BIT_DATA = common dso_local global i32 0, align 4
@SDIO_CCCR_IF = common dso_local global i32 0, align 4
@SDIO_BUS_WIDTH_4BIT = common dso_local global i32 0, align 4
@SDIO_BUS_ASYNC_INT = common dso_local global i32 0, align 4
@MMC_BUS_WIDTH_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*)* @sdio_disable_wide to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdio_disable_wide(%struct.mmc_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %3, align 8
  %6 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %7 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @MMC_CAP_4_BIT_DATA, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %64

15:                                               ; preds = %1
  %16 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %17 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %23 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %64

28:                                               ; preds = %21, %15
  %29 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %30 = load i32, i32* @SDIO_CCCR_IF, align 4
  %31 = call i32 @mmc_io_rw_direct(%struct.mmc_card* %29, i32 0, i32 0, i32 %30, i32 0, i32* %5)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %64

36:                                               ; preds = %28
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @SDIO_BUS_WIDTH_4BIT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %64

42:                                               ; preds = %36
  %43 = load i32, i32* @SDIO_BUS_WIDTH_4BIT, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %5, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* @SDIO_BUS_ASYNC_INT, align 4
  %48 = load i32, i32* %5, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %5, align 4
  %50 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %51 = load i32, i32* @SDIO_CCCR_IF, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @mmc_io_rw_direct(%struct.mmc_card* %50, i32 1, i32 0, i32 %51, i32 %52, i32* null)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %42
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %64

58:                                               ; preds = %42
  %59 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %60 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i32, i32* @MMC_BUS_WIDTH_1, align 4
  %63 = call i32 @mmc_set_bus_width(%struct.TYPE_4__* %61, i32 %62)
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %58, %56, %41, %34, %27, %14
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @mmc_io_rw_direct(%struct.mmc_card*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @mmc_set_bus_width(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
