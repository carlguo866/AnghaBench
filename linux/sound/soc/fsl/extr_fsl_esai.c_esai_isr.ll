; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_esai.c_esai_isr.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_esai.c_esai_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_esai = type { i32, i64, i32, %struct.platform_device* }
%struct.platform_device = type { i32 }

@REG_ESAI_ESR = common dso_local global i32 0, align 4
@REG_ESAI_SAISR = common dso_local global i32 0, align 4
@ESAI_SAISR_TUE = common dso_local global i32 0, align 4
@ESAI_SAISR_ROE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"reset module for xrun\0A\00", align 1
@ESAI_ESR_TINIT_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"isr: Transmission Initialized\0A\00", align 1
@ESAI_ESR_RFF_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"isr: Receiving overrun\0A\00", align 1
@ESAI_ESR_TFE_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"isr: Transmission underrun\0A\00", align 1
@ESAI_ESR_TLS_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"isr: Just transmitted the last slot\0A\00", align 1
@ESAI_ESR_TDE_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"isr: Transmission data exception\0A\00", align 1
@ESAI_ESR_TED_MASK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"isr: Transmitting even slots\0A\00", align 1
@ESAI_ESR_TD_MASK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"isr: Transmitting data\0A\00", align 1
@ESAI_ESR_RLS_MASK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"isr: Just received the last slot\0A\00", align 1
@ESAI_ESR_RDE_MASK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [31 x i8] c"isr: Receiving data exception\0A\00", align 1
@ESAI_ESR_RED_MASK = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [27 x i8] c"isr: Receiving even slots\0A\00", align 1
@ESAI_ESR_RD_MASK = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [21 x i8] c"isr: Receiving data\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @esai_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esai_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fsl_esai*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.fsl_esai*
  store %struct.fsl_esai* %10, %struct.fsl_esai** %5, align 8
  %11 = load %struct.fsl_esai*, %struct.fsl_esai** %5, align 8
  %12 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %11, i32 0, i32 3
  %13 = load %struct.platform_device*, %struct.platform_device** %12, align 8
  store %struct.platform_device* %13, %struct.platform_device** %6, align 8
  %14 = load %struct.fsl_esai*, %struct.fsl_esai** %5, align 8
  %15 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @REG_ESAI_ESR, align 4
  %18 = call i32 @regmap_read(i32 %16, i32 %17, i32* %7)
  %19 = load %struct.fsl_esai*, %struct.fsl_esai** %5, align 8
  %20 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @REG_ESAI_SAISR, align 4
  %23 = call i32 @regmap_read(i32 %21, i32 %22, i32* %8)
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @ESAI_SAISR_TUE, align 4
  %26 = load i32, i32* @ESAI_SAISR_ROE, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %2
  %31 = load %struct.fsl_esai*, %struct.fsl_esai** %5, align 8
  %32 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = call i32 @dev_dbg(i32* %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.fsl_esai*, %struct.fsl_esai** %5, align 8
  %40 = getelementptr inbounds %struct.fsl_esai, %struct.fsl_esai* %39, i32 0, i32 0
  %41 = call i32 @tasklet_schedule(i32* %40)
  br label %42

42:                                               ; preds = %35, %30, %2
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @ESAI_ESR_TINIT_MASK, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = call i32 @dev_dbg(i32* %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %47, %42
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @ESAI_ESR_RFF_MASK, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = call i32 @dev_warn(i32* %58, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %60

60:                                               ; preds = %56, %51
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @ESAI_ESR_TFE_MASK, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = call i32 @dev_warn(i32* %67, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %69

69:                                               ; preds = %65, %60
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @ESAI_ESR_TLS_MASK, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = call i32 @dev_dbg(i32* %76, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %78

78:                                               ; preds = %74, %69
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @ESAI_ESR_TDE_MASK, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = call i32 @dev_dbg(i32* %85, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %87

87:                                               ; preds = %83, %78
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @ESAI_ESR_TED_MASK, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = call i32 @dev_dbg(i32* %94, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %96

96:                                               ; preds = %92, %87
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @ESAI_ESR_TD_MASK, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = call i32 @dev_dbg(i32* %103, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %105

105:                                              ; preds = %101, %96
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @ESAI_ESR_RLS_MASK, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = call i32 @dev_dbg(i32* %112, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  br label %114

114:                                              ; preds = %110, %105
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @ESAI_ESR_RDE_MASK, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %121 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %120, i32 0, i32 0
  %122 = call i32 @dev_dbg(i32* %121, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  br label %123

123:                                              ; preds = %119, %114
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* @ESAI_ESR_RED_MASK, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %130 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %129, i32 0, i32 0
  %131 = call i32 @dev_dbg(i32* %130, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  br label %132

132:                                              ; preds = %128, %123
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* @ESAI_ESR_RD_MASK, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %139 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %138, i32 0, i32 0
  %140 = call i32 @dev_dbg(i32* %139, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  br label %141

141:                                              ; preds = %137, %132
  %142 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %142
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
