; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs5535audio/extr_cs5535audio_pcm.c_cs5535audio_capture_read_prd.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs5535audio/extr_cs5535audio_pcm.c_cs5535audio_capture_read_prd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs5535audio = type { i32 }

@ACC_BM1_PRD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs5535audio*)* @cs5535audio_capture_read_prd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs5535audio_capture_read_prd(%struct.cs5535audio* %0) #0 {
  %2 = alloca %struct.cs5535audio*, align 8
  store %struct.cs5535audio* %0, %struct.cs5535audio** %2, align 8
  %3 = load %struct.cs5535audio*, %struct.cs5535audio** %2, align 8
  %4 = load i32, i32* @ACC_BM1_PRD, align 4
  %5 = call i32 @cs_readl(%struct.cs5535audio* %3, i32 %4)
  ret i32 %5
}

declare dso_local i32 @cs_readl(%struct.cs5535audio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
