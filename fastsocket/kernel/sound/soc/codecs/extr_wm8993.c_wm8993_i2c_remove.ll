; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8993.c_wm8993_i2c_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8993.c_wm8993_i2c_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.wm8993_priv = type { i32 }

@wm8993_dai = common dso_local global i32 0, align 4
@SND_SOC_BIAS_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @wm8993_i2c_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8993_i2c_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.wm8993_priv*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.wm8993_priv* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.wm8993_priv* %5, %struct.wm8993_priv** %3, align 8
  %6 = load %struct.wm8993_priv*, %struct.wm8993_priv** %3, align 8
  %7 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %6, i32 0, i32 0
  %8 = call i32 @snd_soc_unregister_codec(i32* %7)
  %9 = call i32 @snd_soc_unregister_dai(i32* @wm8993_dai)
  %10 = load %struct.wm8993_priv*, %struct.wm8993_priv** %3, align 8
  %11 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %10, i32 0, i32 0
  %12 = load i32, i32* @SND_SOC_BIAS_OFF, align 4
  %13 = call i32 @wm8993_set_bias_level(i32* %11, i32 %12)
  %14 = load %struct.wm8993_priv*, %struct.wm8993_priv** %3, align 8
  %15 = call i32 @kfree(%struct.wm8993_priv* %14)
  ret i32 0
}

declare dso_local %struct.wm8993_priv* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @snd_soc_unregister_codec(i32*) #1

declare dso_local i32 @snd_soc_unregister_dai(i32*) #1

declare dso_local i32 @wm8993_set_bias_level(i32*, i32) #1

declare dso_local i32 @kfree(%struct.wm8993_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
