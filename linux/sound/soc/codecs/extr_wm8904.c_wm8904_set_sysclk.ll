; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8904.c_wm8904_set_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8904.c_wm8904_set_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.wm8904_priv = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Clock source is %d at %uHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @wm8904_set_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8904_set_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_component*, align 8
  %11 = alloca %struct.wm8904_priv*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %12, i32 0, i32 1
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %10, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %16 = call %struct.wm8904_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.wm8904_priv* %16, %struct.wm8904_priv** %11, align 8
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %29 [
    i32 128, label %18
    i32 129, label %25
  ]

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.wm8904_priv*, %struct.wm8904_priv** %11, align 8
  %21 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.wm8904_priv*, %struct.wm8904_priv** %11, align 8
  %24 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  br label %32

25:                                               ; preds = %4
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.wm8904_priv*, %struct.wm8904_priv** %11, align 8
  %28 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %32

29:                                               ; preds = %4
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %41

32:                                               ; preds = %25, %18
  %33 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %34 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @dev_dbg(i32 %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %40 = call i32 @wm8904_configure_clocking(%struct.snd_soc_component* %39)
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %32, %29
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local %struct.wm8904_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @wm8904_configure_clocking(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
