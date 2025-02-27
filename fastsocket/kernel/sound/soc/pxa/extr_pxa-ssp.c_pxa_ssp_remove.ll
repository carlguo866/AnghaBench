; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_pxa-ssp.c_pxa_ssp_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_pxa-ssp.c_pxa_ssp_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.snd_soc_dai = type { %struct.ssp_priv* }
%struct.ssp_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, %struct.snd_soc_dai*)* @pxa_ssp_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxa_ssp_remove(%struct.platform_device* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.ssp_priv*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %6 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %7 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %6, i32 0, i32 0
  %8 = load %struct.ssp_priv*, %struct.ssp_priv** %7, align 8
  store %struct.ssp_priv* %8, %struct.ssp_priv** %5, align 8
  %9 = load %struct.ssp_priv*, %struct.ssp_priv** %5, align 8
  %10 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ssp_free(i32 %12)
  ret void
}

declare dso_local i32 @ssp_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
