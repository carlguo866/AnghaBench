; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_darla20_dsp.c_init_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_darla20_dsp.c_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32, i32, i8*, i32, i8*, i32, i32, i32* }

@.str = private unnamed_addr constant [21 x i8] c"init_hw() - Darla20\0A\00", align 1
@DARLA20 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"init_hw - could not initialize DSP comm page\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
@card_fw = common dso_local global i32* null, align 8
@FW_DARLA20_DSP = common dso_local global i64 0, align 8
@GD_SPDIF_STATUS_UNDEF = common dso_local global i32 0, align 4
@GD_CLOCK_UNDEF = common dso_local global i32 0, align 4
@ECHO_CLOCK_BIT_INTERNAL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"init_hw done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, i32, i32)* @init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_hw(%struct.echoaudio* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.echoaudio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = call i32 @DE_INIT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %7, align 4
  %11 = and i32 %10, 65520
  %12 = load i32, i32* @DARLA20, align 4
  %13 = icmp ne i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @snd_BUG_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %71

20:                                               ; preds = %3
  %21 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %22 = call i32 @init_dsp_comm_page(%struct.echoaudio* %21)
  store i32 %22, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = call i32 @DE_INIT(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %71

27:                                               ; preds = %20
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %30 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %33 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i8*, i8** @TRUE, align 8
  %35 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %36 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = load i32*, i32** @card_fw, align 8
  %38 = load i64, i64* @FW_DARLA20_DSP, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %41 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %40, i32 0, i32 7
  store i32* %39, i32** %41, align 8
  %42 = load i32, i32* @GD_SPDIF_STATUS_UNDEF, align 4
  %43 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %44 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @GD_CLOCK_UNDEF, align 4
  %46 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %47 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 8
  %48 = load i8*, i8** @TRUE, align 8
  %49 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %50 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %49, i32 0, i32 4
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* @ECHO_CLOCK_BIT_INTERNAL, align 4
  %52 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %53 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %55 = call i32 @load_firmware(%struct.echoaudio* %54)
  store i32 %55, i32* %8, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %27
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %4, align 4
  br label %71

59:                                               ; preds = %27
  %60 = load i8*, i8** @FALSE, align 8
  %61 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %62 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  %63 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %64 = call i32 @init_line_levels(%struct.echoaudio* %63)
  store i32 %64, i32* %8, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %4, align 4
  br label %71

68:                                               ; preds = %59
  %69 = call i32 @DE_INIT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %68, %66, %57, %24, %17
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @DE_INIT(i8*) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @init_dsp_comm_page(%struct.echoaudio*) #1

declare dso_local i32 @load_firmware(%struct.echoaudio*) #1

declare dso_local i32 @init_line_levels(%struct.echoaudio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
