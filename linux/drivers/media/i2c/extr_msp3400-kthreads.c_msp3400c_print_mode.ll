; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_msp3400-kthreads.c_msp3400c_print_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_msp3400-kthreads.c_msp3400c_print_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.msp_state = type { i32, i32, i64 }

@msp_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"mono sound carrier: %d.%03d MHz\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"main sound carrier: %d.%03d MHz\0A\00", align 1
@MSP_MODE_FM_NICAM1 = common dso_local global i64 0, align 8
@MSP_MODE_FM_NICAM2 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"NICAM/FM carrier  : %d.%03d MHz\0A\00", align 1
@MSP_MODE_AM_NICAM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"NICAM/AM carrier  : %d.%03d MHz\0A\00", align 1
@MSP_MODE_FM_TERRA = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"FM-stereo carrier : %d.%03d MHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @msp3400c_print_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msp3400c_print_mode(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.msp_state*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call i32 @i2c_get_clientdata(%struct.i2c_client* %4)
  %6 = call %struct.msp_state* @to_state(i32 %5)
  store %struct.msp_state* %6, %struct.msp_state** %3, align 8
  %7 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %8 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %11 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %9, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %1
  %15 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = load i32, i32* @msp_debug, align 4
  %18 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %19 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sdiv i32 %20, 910000
  %22 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %23 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sdiv i32 %24, 910
  %26 = srem i32 %25, 1000
  %27 = call i32 @dev_dbg_lvl(i32* %16, i32 1, i32 %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %26)
  br label %42

28:                                               ; preds = %1
  %29 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 0
  %31 = load i32, i32* @msp_debug, align 4
  %32 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %33 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sdiv i32 %34, 910000
  %36 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %37 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sdiv i32 %38, 910
  %40 = srem i32 %39, 1000
  %41 = call i32 @dev_dbg_lvl(i32* %30, i32 1, i32 %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %40)
  br label %42

42:                                               ; preds = %28, %14
  %43 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %44 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @MSP_MODE_FM_NICAM1, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %50 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MSP_MODE_FM_NICAM2, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %48, %42
  %55 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 0
  %57 = load i32, i32* @msp_debug, align 4
  %58 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %59 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sdiv i32 %60, 910000
  %62 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %63 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sdiv i32 %64, 910
  %66 = srem i32 %65, 1000
  %67 = call i32 @dev_dbg_lvl(i32* %56, i32 1, i32 %57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %61, i32 %66)
  br label %68

68:                                               ; preds = %54, %48
  %69 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %70 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @MSP_MODE_AM_NICAM, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %88

74:                                               ; preds = %68
  %75 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %76 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %75, i32 0, i32 0
  %77 = load i32, i32* @msp_debug, align 4
  %78 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %79 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sdiv i32 %80, 910000
  %82 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %83 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sdiv i32 %84, 910
  %86 = srem i32 %85, 1000
  %87 = call i32 @dev_dbg_lvl(i32* %76, i32 1, i32 %77, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %81, i32 %86)
  br label %88

88:                                               ; preds = %74, %68
  %89 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %90 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @MSP_MODE_FM_TERRA, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %116

94:                                               ; preds = %88
  %95 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %96 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %99 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %97, %100
  br i1 %101, label %102, label %116

102:                                              ; preds = %94
  %103 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %104 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %103, i32 0, i32 0
  %105 = load i32, i32* @msp_debug, align 4
  %106 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %107 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = sdiv i32 %108, 910000
  %110 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %111 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = sdiv i32 %112, 910
  %114 = srem i32 %113, 1000
  %115 = call i32 @dev_dbg_lvl(i32* %104, i32 1, i32 %105, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %109, i32 %114)
  br label %116

116:                                              ; preds = %102, %94, %88
  ret void
}

declare dso_local %struct.msp_state* @to_state(i32) #1

declare dso_local i32 @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @dev_dbg_lvl(i32*, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
