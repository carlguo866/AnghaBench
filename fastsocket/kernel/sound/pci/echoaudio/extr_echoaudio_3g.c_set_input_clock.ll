; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio_3g.c_set_input_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio_3g.c_set_input_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"set_input_clock:\0A\00", align 1
@E3G_CLOCK_CLEAR_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Set Echo3G clock to INTERNAL\0A\00", align 1
@DIGITAL_MODE_ADAT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Set Echo3G clock to SPDIF\0A\00", align 1
@E3G_SPDIF_CLOCK = common dso_local global i32 0, align 4
@E3G_CLOCK_DETECT_BIT_SPDIF96 = common dso_local global i32 0, align 4
@E3G_DOUBLE_SPEED_MODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Set Echo3G clock to ADAT\0A\00", align 1
@E3G_ADAT_CLOCK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Set Echo3G clock to WORD\0A\00", align 1
@E3G_WORD_CLOCK = common dso_local global i32 0, align 4
@E3G_CLOCK_DETECT_BIT_WORD96 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"Input clock 0x%x not supported for Echo3G\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, i32)* @set_input_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_input_clock(%struct.echoaudio* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.echoaudio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call i32 @DE_ACT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %10 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %9, i32 0, i32 3
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @le32_to_cpu(i32 %13)
  %15 = load i32, i32* @E3G_CLOCK_CLEAR_MASK, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %18 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %17, i32 0, i32 3
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le32_to_cpu(i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  switch i32 %23, label %98 [
    i32 130, label %24
    i32 129, label %33
    i32 131, label %61
    i32 128, label %79
  ]

24:                                               ; preds = %2
  %25 = call i32 @DE_ACT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %27 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %26, i32 0, i32 0
  store i32 130, i32* %27, align 8
  %28 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %29 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %30 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @set_sample_rate(%struct.echoaudio* %28, i32 %31)
  store i32 %32, i32* %3, align 4
  br label %114

33:                                               ; preds = %2
  %34 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %35 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @DIGITAL_MODE_ADAT, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @EAGAIN, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %114

42:                                               ; preds = %33
  %43 = call i32 @DE_ACT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* @E3G_SPDIF_CLOCK, align 4
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @E3G_CLOCK_DETECT_BIT_SPDIF96, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load i32, i32* @E3G_DOUBLE_SPEED_MODE, align 4
  %53 = load i32, i32* %6, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %6, align 4
  br label %60

55:                                               ; preds = %42
  %56 = load i32, i32* @E3G_DOUBLE_SPEED_MODE, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %6, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %55, %51
  br label %105

61:                                               ; preds = %2
  %62 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %63 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @DIGITAL_MODE_ADAT, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* @EAGAIN, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %114

70:                                               ; preds = %61
  %71 = call i32 @DE_ACT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %72 = load i32, i32* @E3G_ADAT_CLOCK, align 4
  %73 = load i32, i32* %6, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* @E3G_DOUBLE_SPEED_MODE, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %6, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %6, align 4
  br label %105

79:                                               ; preds = %2
  %80 = call i32 @DE_ACT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %81 = load i32, i32* @E3G_WORD_CLOCK, align 4
  %82 = load i32, i32* %6, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @E3G_CLOCK_DETECT_BIT_WORD96, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %79
  %89 = load i32, i32* @E3G_DOUBLE_SPEED_MODE, align 4
  %90 = load i32, i32* %6, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %6, align 4
  br label %97

92:                                               ; preds = %79
  %93 = load i32, i32* @E3G_DOUBLE_SPEED_MODE, align 4
  %94 = xor i32 %93, -1
  %95 = load i32, i32* %6, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %92, %88
  br label %105

98:                                               ; preds = %2
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = inttoptr i64 %100 to i8*
  %102 = call i32 @DE_ACT(i8* %101)
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  br label %114

105:                                              ; preds = %97, %70, %60
  %106 = load i32, i32* %5, align 4
  %107 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %108 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %110 = load i32, i32* %6, align 4
  %111 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %112 = call i32 @get_frq_reg(%struct.echoaudio* %111)
  %113 = call i32 @write_control_reg(%struct.echoaudio* %109, i32 %110, i32 %112, i32 1)
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %105, %98, %67, %39, %24
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @DE_ACT(i8*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @set_sample_rate(%struct.echoaudio*, i32) #1

declare dso_local i32 @write_control_reg(%struct.echoaudio*, i32, i32, i32) #1

declare dso_local i32 @get_frq_reg(%struct.echoaudio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
