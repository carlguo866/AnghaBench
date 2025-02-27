; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8776.c_wm8776_set_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8776.c_wm8776_set_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.TYPE_2__*, %struct.snd_soc_component* }
%struct.TYPE_2__ = type { i64 }
%struct.snd_soc_component = type { i32 }
%struct.wm8776_priv = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @wm8776_set_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8776_set_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_component*, align 8
  %11 = alloca %struct.wm8776_priv*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %12, i32 0, i32 1
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %10, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %16 = call %struct.wm8776_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.wm8776_priv* %16, %struct.wm8776_priv** %11, align 8
  %17 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %18 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.wm8776_priv*, %struct.wm8776_priv** %11, align 8
  %23 = getelementptr inbounds %struct.wm8776_priv, %struct.wm8776_priv* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i64 @ARRAY_SIZE(i32* %24)
  %26 = icmp uge i64 %21, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @WARN_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %44

33:                                               ; preds = %4
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.wm8776_priv*, %struct.wm8776_priv** %11, align 8
  %36 = getelementptr inbounds %struct.wm8776_priv, %struct.wm8776_priv* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %39 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32, i32* %37, i64 %42
  store i32 %34, i32* %43, align 4
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %33, %30
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local %struct.wm8776_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
