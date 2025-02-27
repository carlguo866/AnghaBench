; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l51.c_cs42l51_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l51.c_cs42l51_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.cs42l51_private = type { i32, i32 }

@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"invalid DAI format\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@MODE_MASTER = common dso_local global i32 0, align 4
@MODE_SLAVE_AUTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Unknown master/slave configuration\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @cs42l51_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs42l51_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.cs42l51_private*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %8, i32 0, i32 0
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  store %struct.snd_soc_component* %10, %struct.snd_soc_component** %6, align 8
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %12 = call %struct.cs42l51_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %11)
  store %struct.cs42l51_private* %12, %struct.cs42l51_private** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %15 = and i32 %13, %14
  switch i32 %15, label %22 [
    i32 130, label %16
    i32 129, label %16
    i32 128, label %16
  ]

16:                                               ; preds = %2, %2, %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %19 = and i32 %17, %18
  %20 = load %struct.cs42l51_private*, %struct.cs42l51_private** %7, align 8
  %21 = getelementptr inbounds %struct.cs42l51_private, %struct.cs42l51_private* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %29

22:                                               ; preds = %2
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %24 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %49

29:                                               ; preds = %16
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %32 = and i32 %30, %31
  switch i32 %32, label %41 [
    i32 132, label %33
    i32 131, label %37
  ]

33:                                               ; preds = %29
  %34 = load i32, i32* @MODE_MASTER, align 4
  %35 = load %struct.cs42l51_private*, %struct.cs42l51_private** %7, align 8
  %36 = getelementptr inbounds %struct.cs42l51_private, %struct.cs42l51_private* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  br label %48

37:                                               ; preds = %29
  %38 = load i32, i32* @MODE_SLAVE_AUTO, align 4
  %39 = load %struct.cs42l51_private*, %struct.cs42l51_private** %7, align 8
  %40 = getelementptr inbounds %struct.cs42l51_private, %struct.cs42l51_private* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %48

41:                                               ; preds = %29
  %42 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %43 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %49

48:                                               ; preds = %37, %33
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %41, %22
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.cs42l51_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
