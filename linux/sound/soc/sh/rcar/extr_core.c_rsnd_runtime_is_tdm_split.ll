; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c_rsnd_runtime_is_tdm_split.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c_rsnd_runtime_is_tdm_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_dai_stream = type { i32 }

@RSND_STREAM_TDM_SPLIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsnd_runtime_is_tdm_split(%struct.rsnd_dai_stream* %0) #0 {
  %2 = alloca %struct.rsnd_dai_stream*, align 8
  store %struct.rsnd_dai_stream* %0, %struct.rsnd_dai_stream** %2, align 8
  %3 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %2, align 8
  %4 = load i32, i32* @RSND_STREAM_TDM_SPLIT, align 4
  %5 = call i32 @rsnd_flags_has(%struct.rsnd_dai_stream* %3, i32 %4)
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  ret i32 %9
}

declare dso_local i32 @rsnd_flags_has(%struct.rsnd_dai_stream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
