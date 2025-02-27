; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/extr_r92c_rf.c_r92c_rf_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/extr_r92c_rf.c_r92c_rf_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { %struct.r92c_softc* }
%struct.r92c_softc = type { i32* }

@R92C_MAX_CHAINS = common dso_local global i32 0, align 4
@R92C_HSSI_PARAM2_READ_EDGE = common dso_local global i32 0, align 4
@R92C_HSSI_PARAM2_READ_ADDR = common dso_local global i32 0, align 4
@R92C_HSSI_PARAM1_PI = common dso_local global i32 0, align 4
@R92C_LSSI_READBACK_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r92c_rf_read(%struct.rtwn_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rtwn_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.r92c_softc*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %12 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %11, i32 0, i32 0
  %13 = load %struct.r92c_softc*, %struct.r92c_softc** %12, align 8
  store %struct.r92c_softc* %13, %struct.r92c_softc** %7, align 8
  %14 = load i32, i32* @R92C_MAX_CHAINS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %19 = call i32 @R92C_HSSI_PARAM2(i32 0)
  %20 = call i32 @rtwn_bb_read(%struct.rtwn_softc* %18, i32 %19)
  %21 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 %20, i32* %21, align 16
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %3
  %25 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @R92C_HSSI_PARAM2(i32 %26)
  %28 = call i32 @rtwn_bb_read(%struct.rtwn_softc* %25, i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %17, i64 %30
  store i32 %28, i32* %31, align 4
  br label %32

32:                                               ; preds = %24, %3
  %33 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %34 = call i32 @R92C_HSSI_PARAM2(i32 0)
  %35 = getelementptr inbounds i32, i32* %17, i64 0
  %36 = load i32, i32* %35, align 16
  %37 = load i32, i32* @R92C_HSSI_PARAM2_READ_EDGE, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  %40 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %33, i32 %34, i32 %39)
  %41 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %42 = load %struct.r92c_softc*, %struct.r92c_softc** %7, align 8
  %43 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @rtwn_delay(%struct.rtwn_softc* %41, i32 %46)
  %48 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @R92C_HSSI_PARAM2(i32 %49)
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %17, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @R92C_HSSI_PARAM2_READ_ADDR, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @RW(i32 %54, i32 %55, i32 %56)
  %58 = load i32, i32* @R92C_HSSI_PARAM2_READ_EDGE, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %48, i32 %50, i32 %59)
  %61 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %62 = load %struct.r92c_softc*, %struct.r92c_softc** %7, align 8
  %63 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @rtwn_delay(%struct.rtwn_softc* %61, i32 %66)
  %68 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %69 = call i32 @R92C_HSSI_PARAM2(i32 0)
  %70 = getelementptr inbounds i32, i32* %17, i64 0
  %71 = load i32, i32* %70, align 16
  %72 = load i32, i32* @R92C_HSSI_PARAM2_READ_EDGE, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %68, i32 %69, i32 %73)
  %75 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %76 = load %struct.r92c_softc*, %struct.r92c_softc** %7, align 8
  %77 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @rtwn_delay(%struct.rtwn_softc* %75, i32 %80)
  %82 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @R92C_HSSI_PARAM1(i32 %83)
  %85 = call i32 @rtwn_bb_read(%struct.rtwn_softc* %82, i32 %84)
  %86 = load i32, i32* @R92C_HSSI_PARAM1_PI, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %32
  %90 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @R92C_HSPI_READBACK(i32 %91)
  %93 = call i32 @rtwn_bb_read(%struct.rtwn_softc* %90, i32 %92)
  store i32 %93, i32* %10, align 4
  br label %99

94:                                               ; preds = %32
  %95 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @R92C_LSSI_READBACK(i32 %96)
  %98 = call i32 @rtwn_bb_read(%struct.rtwn_softc* %95, i32 %97)
  store i32 %98, i32* %10, align 4
  br label %99

99:                                               ; preds = %94, %89
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @R92C_LSSI_READBACK_DATA, align 4
  %102 = call i32 @MS(i32 %100, i32 %101)
  %103 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %103)
  ret i32 %102
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rtwn_bb_read(%struct.rtwn_softc*, i32) #2

declare dso_local i32 @R92C_HSSI_PARAM2(i32) #2

declare dso_local i32 @rtwn_bb_write(%struct.rtwn_softc*, i32, i32) #2

declare dso_local i32 @rtwn_delay(%struct.rtwn_softc*, i32) #2

declare dso_local i32 @RW(i32, i32, i32) #2

declare dso_local i32 @R92C_HSSI_PARAM1(i32) #2

declare dso_local i32 @R92C_HSPI_READBACK(i32) #2

declare dso_local i32 @R92C_LSSI_READBACK(i32) #2

declare dso_local i32 @MS(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
