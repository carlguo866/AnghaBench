; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen3.c_cyapa_gen3_do_fw_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen3.c_cyapa_gen3_do_fw_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.firmware = type { i32* }

@CYAPA_FW_DATA_BLOCK_START = common dso_local global i32 0, align 4
@CYAPA_FW_DATA_BLOCK_COUNT = common dso_local global i64 0, align 8
@CYAPA_FW_HDR_BLOCK_COUNT = common dso_local global i64 0, align 8
@CYAPA_FW_BLOCK_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"FW update aborted, write image: %d\0A\00", align 1
@CYAPA_FW_HDR_BLOCK_START = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"FW update aborted, write checksum: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyapa*, %struct.firmware*)* @cyapa_gen3_do_fw_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_gen3_do_fw_update(%struct.cyapa* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cyapa*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  %8 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %9 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %13 = load i32, i32* @CYAPA_FW_DATA_BLOCK_START, align 4
  %14 = load i64, i64* @CYAPA_FW_DATA_BLOCK_COUNT, align 8
  %15 = load %struct.firmware*, %struct.firmware** %5, align 8
  %16 = getelementptr inbounds %struct.firmware, %struct.firmware* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* @CYAPA_FW_HDR_BLOCK_COUNT, align 8
  %19 = load i64, i64* @CYAPA_FW_BLOCK_SIZE, align 8
  %20 = mul i64 %18, %19
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = call i32 @cyapa_gen3_write_blocks(%struct.cyapa* %12, i32 %13, i64 %14, i32* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %47

30:                                               ; preds = %2
  %31 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %32 = load i32, i32* @CYAPA_FW_HDR_BLOCK_START, align 4
  %33 = load i64, i64* @CYAPA_FW_HDR_BLOCK_COUNT, align 8
  %34 = load %struct.firmware*, %struct.firmware** %5, align 8
  %35 = getelementptr inbounds %struct.firmware, %struct.firmware* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = call i32 @cyapa_gen3_write_blocks(%struct.cyapa* %31, i32 %32, i64 %33, i32* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %30
  %42 = load %struct.device*, %struct.device** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @dev_err(%struct.device* %42, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %47

46:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %41, %25
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @cyapa_gen3_write_blocks(%struct.cyapa*, i32, i64, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
