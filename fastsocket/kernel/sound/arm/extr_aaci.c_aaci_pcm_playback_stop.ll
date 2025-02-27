; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_aaci.c_aaci_pcm_playback_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_aaci.c_aaci_pcm_playback_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aaci_runtime = type { i32, i64 }

@AACI_IE = common dso_local global i64 0, align 8
@IE_URIE = common dso_local global i32 0, align 4
@IE_TXIE = common dso_local global i32 0, align 4
@CR_EN = common dso_local global i32 0, align 4
@AACI_TXCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aaci_runtime*)* @aaci_pcm_playback_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aaci_pcm_playback_stop(%struct.aaci_runtime* %0) #0 {
  %2 = alloca %struct.aaci_runtime*, align 8
  %3 = alloca i32, align 4
  store %struct.aaci_runtime* %0, %struct.aaci_runtime** %2, align 8
  %4 = load %struct.aaci_runtime*, %struct.aaci_runtime** %2, align 8
  %5 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @AACI_IE, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readl(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @IE_URIE, align 4
  %11 = load i32, i32* @IE_TXIE, align 4
  %12 = or i32 %10, %11
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.aaci_runtime*, %struct.aaci_runtime** %2, align 8
  %18 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @AACI_IE, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel(i32 %16, i64 %21)
  %23 = load i32, i32* @CR_EN, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.aaci_runtime*, %struct.aaci_runtime** %2, align 8
  %26 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load %struct.aaci_runtime*, %struct.aaci_runtime** %2, align 8
  %30 = call i32 @aaci_chan_wait_ready(%struct.aaci_runtime* %29)
  %31 = load %struct.aaci_runtime*, %struct.aaci_runtime** %2, align 8
  %32 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.aaci_runtime*, %struct.aaci_runtime** %2, align 8
  %35 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @AACI_TXCR, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i32 %33, i64 %38)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @aaci_chan_wait_ready(%struct.aaci_runtime*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
