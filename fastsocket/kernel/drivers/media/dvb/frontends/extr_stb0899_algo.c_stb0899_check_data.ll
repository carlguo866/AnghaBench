; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_algo.c_stb0899_check_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_algo.c_stb0899_check_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stb0899_state = type { i32, %struct.stb0899_params, %struct.stb0899_internal }
%struct.stb0899_params = type { i32 }
%struct.stb0899_internal = type { i32 }

@NODATA = common dso_local global i32 0, align 4
@STB0899_TSTRES = common dso_local global i32 0, align 4
@FRESACS = common dso_local global i32 0, align 4
@STB0899_DSTATUS2 = common dso_local global i32 0, align 4
@STB0899_VSTATUS = common dso_local global i32 0, align 4
@VSTATUS_LOCKEDVIT = common dso_local global i32 0, align 4
@VSTATUS_END_LOOPVIT = common dso_local global i32 0, align 4
@DATAOK = common dso_local global i32 0, align 4
@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"-----------------> DATA OK !\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stb0899_state*)* @stb0899_check_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb0899_check_data(%struct.stb0899_state* %0) #0 {
  %2 = alloca %struct.stb0899_state*, align 8
  %3 = alloca %struct.stb0899_internal*, align 8
  %4 = alloca %struct.stb0899_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.stb0899_state* %0, %struct.stb0899_state** %2, align 8
  %10 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %11 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %10, i32 0, i32 2
  store %struct.stb0899_internal* %11, %struct.stb0899_internal** %3, align 8
  %12 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %13 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %12, i32 0, i32 1
  store %struct.stb0899_params* %13, %struct.stb0899_params** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 500, i32* %7, align 4
  %14 = load i32, i32* @NODATA, align 4
  %15 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %16 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %18 = load i32, i32* @STB0899_TSTRES, align 4
  %19 = call i32 @stb0899_read_reg(%struct.stb0899_state* %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* @FRESACS, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @STB0899_SETFIELD_VAL(i32 %20, i32 %21, i32 1)
  %23 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %24 = load i32, i32* @STB0899_TSTRES, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @stb0899_write_reg(%struct.stb0899_state* %23, i32 %24, i32 %25)
  %27 = call i32 @msleep(i32 1)
  %28 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %29 = load i32, i32* @STB0899_TSTRES, align 4
  %30 = call i32 @stb0899_read_reg(%struct.stb0899_state* %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* @FRESACS, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @STB0899_SETFIELD_VAL(i32 %31, i32 %32, i32 0)
  %34 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %35 = load i32, i32* @STB0899_TSTRES, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @stb0899_write_reg(%struct.stb0899_state* %34, i32 %35, i32 %36)
  %38 = load %struct.stb0899_params*, %struct.stb0899_params** %4, align 8
  %39 = getelementptr inbounds %struct.stb0899_params, %struct.stb0899_params* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp sle i32 %40, 2000000
  br i1 %41, label %42, label %43

42:                                               ; preds = %1
  store i32 2000, i32* %7, align 4
  br label %58

43:                                               ; preds = %1
  %44 = load %struct.stb0899_params*, %struct.stb0899_params** %4, align 8
  %45 = getelementptr inbounds %struct.stb0899_params, %struct.stb0899_params* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp sle i32 %46, 5000000
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 1500, i32* %7, align 4
  br label %57

49:                                               ; preds = %43
  %50 = load %struct.stb0899_params*, %struct.stb0899_params** %4, align 8
  %51 = getelementptr inbounds %struct.stb0899_params, %struct.stb0899_params* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp sle i32 %52, 15000000
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 1000, i32* %7, align 4
  br label %56

55:                                               ; preds = %49
  store i32 500, i32* %7, align 4
  br label %56

56:                                               ; preds = %55, %54
  br label %57

57:                                               ; preds = %56, %48
  br label %58

58:                                               ; preds = %57, %42
  %59 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %60 = load i32, i32* @STB0899_DSTATUS2, align 4
  %61 = call i32 @stb0899_write_reg(%struct.stb0899_state* %59, i32 %60, i32 0)
  br label %62

62:                                               ; preds = %58, %82
  %63 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %64 = load i32, i32* @STB0899_VSTATUS, align 4
  %65 = call i32 @stb0899_read_reg(%struct.stb0899_state* %63, i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* @VSTATUS_LOCKEDVIT, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @STB0899_GETFIELD(i32 %66, i32 %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* @VSTATUS_END_LOOPVIT, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @STB0899_GETFIELD(i32 %69, i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %62
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77, %74, %62
  br label %85

82:                                               ; preds = %77
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %62

85:                                               ; preds = %81
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %85
  %89 = load i32, i32* @DATAOK, align 4
  %90 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %91 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  %92 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %93 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @FE_DEBUG, align 4
  %96 = call i32 @dprintk(i32 %94, i32 %95, i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %97

97:                                               ; preds = %88, %85
  %98 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %99 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  ret i32 %100
}

declare dso_local i32 @stb0899_read_reg(%struct.stb0899_state*, i32) #1

declare dso_local i32 @STB0899_SETFIELD_VAL(i32, i32, i32) #1

declare dso_local i32 @stb0899_write_reg(%struct.stb0899_state*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @STB0899_GETFIELD(i32, i32) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
