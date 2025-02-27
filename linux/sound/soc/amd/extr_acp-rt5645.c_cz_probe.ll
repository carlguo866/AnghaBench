; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/amd/extr_acp-rt5645.c_cz_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/amd/extr_acp-rt5645.c_cz_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { i32, i32* }
%struct.platform_device = type { i32 }

@cz_card = common dso_local global %struct.snd_soc_card zeroinitializer, align 8
@.str = private unnamed_addr constant [43 x i8] c"devm_snd_soc_register_card(%s) failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cz_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cz_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_card*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.snd_soc_card* @cz_card, %struct.snd_soc_card** %5, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  store i32* %7, i32** getelementptr inbounds (%struct.snd_soc_card, %struct.snd_soc_card* @cz_card, i32 0, i32 1), align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %10 = call i32 @platform_set_drvdata(%struct.platform_device* %8, %struct.snd_soc_card* %9)
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call i32 @devm_snd_soc_register_card(i32* %12, %struct.snd_soc_card* @cz_card)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load i32, i32* getelementptr inbounds (%struct.snd_soc_card, %struct.snd_soc_card* @cz_card, i32 0, i32 0), align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %16
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.snd_soc_card*) #1

declare dso_local i32 @devm_snd_soc_register_card(i32*, %struct.snd_soc_card*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
