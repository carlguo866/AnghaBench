; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_warpcore_read_sfp_module_eeprom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_warpcore_read_sfp_module_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_phy = type { i32 }
%struct.elink_params = type { %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }

@ELINK_STATUS_OK = common dso_local global i64 0, align 8
@ELINK_SFP_EEPROM_PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Reading from eeprom is limited to 16 bytes\0A\00", align 1
@ELINK_STATUS_ERROR = common dso_local global i64 0, align 8
@I2C_WA_PWR_ITER = common dso_local global i64 0, align 8
@I2C_WA_RETRY_CNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.elink_phy*, %struct.elink_params*, i64, i32, i64, i64*, i64)* @elink_warpcore_read_sfp_module_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @elink_warpcore_read_sfp_module_eeprom(%struct.elink_phy* %0, %struct.elink_params* %1, i64 %2, i32 %3, i64 %4, i64* %5, i64 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.elink_phy*, align 8
  %10 = alloca %struct.elink_params*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca [4 x i32], align 16
  %21 = alloca i32, align 4
  %22 = alloca %struct.bxe_softc*, align 8
  store %struct.elink_phy* %0, %struct.elink_phy** %9, align 8
  store %struct.elink_params* %1, %struct.elink_params** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i64* %5, i64** %14, align 8
  store i64 %6, i64* %15, align 8
  %23 = load i64, i64* @ELINK_STATUS_OK, align 8
  store i64 %23, i64* %16, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  %24 = load %struct.elink_params*, %struct.elink_params** %10, align 8
  %25 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %24, i32 0, i32 0
  %26 = load %struct.bxe_softc*, %struct.bxe_softc** %25, align 8
  store %struct.bxe_softc* %26, %struct.bxe_softc** %22, align 8
  %27 = load i64, i64* %13, align 8
  %28 = load i64, i64* @ELINK_SFP_EEPROM_PAGE_SIZE, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %7
  %31 = load %struct.bxe_softc*, %struct.bxe_softc** %22, align 8
  %32 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %33 = load i64, i64* @ELINK_STATUS_ERROR, align 8
  store i64 %33, i64* %8, align 8
  br label %105

34:                                               ; preds = %7
  %35 = load i32, i32* %12, align 4
  %36 = and i32 %35, -4
  store i32 %36, i32* %21, align 4
  br label %37

37:                                               ; preds = %68, %34
  %38 = load i64, i64* %15, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %37
  %41 = load i64, i64* %19, align 8
  %42 = load i64, i64* @I2C_WA_PWR_ITER, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load %struct.elink_params*, %struct.elink_params** %10, align 8
  %46 = call i32 @elink_warpcore_power_module(%struct.elink_params* %45, i32 0)
  %47 = call i32 @DELAY(i32 1000)
  %48 = load %struct.elink_params*, %struct.elink_params** %10, align 8
  %49 = call i32 @elink_warpcore_power_module(%struct.elink_params* %48, i32 1)
  br label %50

50:                                               ; preds = %44, %40, %37
  %51 = load %struct.elink_params*, %struct.elink_params** %10, align 8
  %52 = call i32 @elink_bsc_module_sel(%struct.elink_params* %51)
  %53 = load %struct.bxe_softc*, %struct.bxe_softc** %22, align 8
  %54 = load i64, i64* %11, align 8
  %55 = load i32, i32* %21, align 4
  %56 = load i64, i64* %13, align 8
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  %58 = call i64 @elink_bsc_read(%struct.bxe_softc* %53, i64 %54, i32 %55, i32 0, i64 %56, i32* %57)
  store i64 %58, i64* %16, align 8
  br label %59

59:                                               ; preds = %50
  %60 = load i64, i64* %16, align 8
  %61 = load i64, i64* @ELINK_STATUS_OK, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i64, i64* %19, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %19, align 8
  %66 = load i64, i64* @I2C_WA_RETRY_CNT, align 8
  %67 = icmp slt i64 %65, %66
  br label %68

68:                                               ; preds = %63, %59
  %69 = phi i1 [ false, %59 ], [ %67, %63 ]
  br i1 %69, label %37, label %70

70:                                               ; preds = %68
  %71 = load i64, i64* %16, align 8
  %72 = load i64, i64* @ELINK_STATUS_OK, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %103

74:                                               ; preds = %70
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %21, align 4
  %77 = sub nsw i32 %75, %76
  %78 = sext i32 %77 to i64
  store i64 %78, i64* %17, align 8
  br label %79

79:                                               ; preds = %99, %74
  %80 = load i64, i64* %17, align 8
  %81 = load i64, i64* %13, align 8
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %21, align 4
  %84 = sub nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %81, %85
  %87 = icmp slt i64 %80, %86
  br i1 %87, label %88, label %102

88:                                               ; preds = %79
  %89 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  %90 = bitcast i32* %89 to i64*
  %91 = load i64, i64* %17, align 8
  %92 = getelementptr inbounds i64, i64* %90, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = load i64*, i64** %14, align 8
  %95 = load i64, i64* %18, align 8
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  store i64 %93, i64* %96, align 8
  %97 = load i64, i64* %18, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %18, align 8
  br label %99

99:                                               ; preds = %88
  %100 = load i64, i64* %17, align 8
  %101 = add nsw i64 %100, 1
  store i64 %101, i64* %17, align 8
  br label %79

102:                                              ; preds = %79
  br label %103

103:                                              ; preds = %102, %70
  %104 = load i64, i64* %16, align 8
  store i64 %104, i64* %8, align 8
  br label %105

105:                                              ; preds = %103, %30
  %106 = load i64, i64* %8, align 8
  ret i64 %106
}

declare dso_local i32 @ELINK_DEBUG_P0(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @elink_warpcore_power_module(%struct.elink_params*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @elink_bsc_module_sel(%struct.elink_params*) #1

declare dso_local i64 @elink_bsc_read(%struct.bxe_softc*, i64, i32, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
