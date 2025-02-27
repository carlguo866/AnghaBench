; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt286.c_rt286_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt286.c_rt286_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt286_priv = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@RT286_IRQ_CTRL = common dso_local global i32 0, align 4
@SND_JACK_HEADPHONE = common dso_local global i32 0, align 4
@SND_JACK_MICROPHONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rt286_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt286_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rt286_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.rt286_priv*
  store %struct.rt286_priv* %10, %struct.rt286_priv** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.rt286_priv*, %struct.rt286_priv** %5, align 8
  %12 = call i32 @rt286_jack_detect(%struct.rt286_priv* %11, i32* %6, i32* %7)
  %13 = load %struct.rt286_priv*, %struct.rt286_priv** %5, align 8
  %14 = getelementptr inbounds %struct.rt286_priv, %struct.rt286_priv* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @RT286_IRQ_CTRL, align 4
  %17 = call i32 @regmap_update_bits(i32 %15, i32 %16, i32 1, i32 1)
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  %22 = load i32, i32* %8, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %20, %2
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* @SND_JACK_MICROPHONE, align 4
  %29 = load i32, i32* %8, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %27, %24
  %32 = load %struct.rt286_priv*, %struct.rt286_priv** %5, align 8
  %33 = getelementptr inbounds %struct.rt286_priv, %struct.rt286_priv* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @SND_JACK_MICROPHONE, align 4
  %37 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @snd_soc_jack_report(i32 %34, i32 %35, i32 %38)
  %40 = load %struct.rt286_priv*, %struct.rt286_priv** %5, align 8
  %41 = getelementptr inbounds %struct.rt286_priv, %struct.rt286_priv* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i32 @pm_wakeup_event(i32* %43, i32 300)
  %45 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %45
}

declare dso_local i32 @rt286_jack_detect(%struct.rt286_priv*, i32*, i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @snd_soc_jack_report(i32, i32, i32) #1

declare dso_local i32 @pm_wakeup_event(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
