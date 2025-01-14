; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dtv/extr_linux.c_dvb_set_dvbt.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dtv/extr_linux.c_dvb_set_dvbt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@QAM_AUTO = common dso_local global i32 0, align 4
@DTV_DELIVERY_DVB_T = common dso_local global i32 0, align 4
@DTV_CLEAR = common dso_local global i32 0, align 4
@DTV_DELIVERY_SYSTEM = common dso_local global i32 0, align 4
@SYS_DVBT = common dso_local global i32 0, align 4
@DTV_FREQUENCY = common dso_local global i32 0, align 4
@DTV_MODULATION = common dso_local global i32 0, align 4
@DTV_CODE_RATE_HP = common dso_local global i32 0, align 4
@DTV_CODE_RATE_LP = common dso_local global i32 0, align 4
@DTV_BANDWIDTH_HZ = common dso_local global i32 0, align 4
@DTV_TRANSMISSION_MODE = common dso_local global i32 0, align 4
@DTV_GUARD_INTERVAL = common dso_local global i32 0, align 4
@DTV_HIERARCHY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dvb_set_dvbt(i32* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32 %1, i32* %12, align 4
  store i8* %2, i8** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %21 = load i8*, i8** %13, align 8
  %22 = load i32, i32* @QAM_AUTO, align 4
  %23 = call i32 @dvb_parse_modulation(i8* %21, i32 %22)
  store i32 %23, i32* %20, align 4
  %24 = load i32, i32* %14, align 4
  %25 = call i32 @dvb_parse_fec(i32 %24)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %15, align 4
  %27 = call i32 @dvb_parse_fec(i32 %26)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %16, align 4
  %29 = call i32 @dvb_parse_bandwidth(i32 %28)
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %17, align 4
  %31 = call i32 @dvb_parse_transmit_mode(i32 %30)
  store i32 %31, i32* %17, align 4
  %32 = load i32, i32* %18, align 4
  %33 = call i32 @dvb_parse_guard(i32 %32)
  store i32 %33, i32* %18, align 4
  %34 = load i32, i32* %19, align 4
  %35 = call i32 @dvb_parse_hierarchy(i32 %34)
  store i32 %35, i32* %19, align 4
  %36 = load i32*, i32** %11, align 8
  %37 = load i32, i32* @DTV_DELIVERY_DVB_T, align 4
  %38 = call i64 @dvb_find_frontend(i32* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %9
  store i32 -1, i32* %10, align 4
  br label %63

41:                                               ; preds = %9
  %42 = load i32*, i32** %11, align 8
  %43 = load i32, i32* @DTV_CLEAR, align 4
  %44 = load i32, i32* @DTV_DELIVERY_SYSTEM, align 4
  %45 = load i32, i32* @SYS_DVBT, align 4
  %46 = load i32, i32* @DTV_FREQUENCY, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @DTV_MODULATION, align 4
  %49 = load i32, i32* %20, align 4
  %50 = load i32, i32* @DTV_CODE_RATE_HP, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* @DTV_CODE_RATE_LP, align 4
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* @DTV_BANDWIDTH_HZ, align 4
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* @DTV_TRANSMISSION_MODE, align 4
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* @DTV_GUARD_INTERVAL, align 4
  %59 = load i32, i32* %18, align 4
  %60 = load i32, i32* @DTV_HIERARCHY, align 4
  %61 = load i32, i32* %19, align 4
  %62 = call i32 @dvb_set_props(i32* %42, i32 10, i32 %43, i32 0, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60, i32 %61)
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %41, %40
  %64 = load i32, i32* %10, align 4
  ret i32 %64
}

declare dso_local i32 @dvb_parse_modulation(i8*, i32) #1

declare dso_local i32 @dvb_parse_fec(i32) #1

declare dso_local i32 @dvb_parse_bandwidth(i32) #1

declare dso_local i32 @dvb_parse_transmit_mode(i32) #1

declare dso_local i32 @dvb_parse_guard(i32) #1

declare dso_local i32 @dvb_parse_hierarchy(i32) #1

declare dso_local i64 @dvb_find_frontend(i32*, i32) #1

declare dso_local i32 @dvb_set_props(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
