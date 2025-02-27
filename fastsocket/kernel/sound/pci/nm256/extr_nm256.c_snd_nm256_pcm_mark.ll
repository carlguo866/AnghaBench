; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/nm256/extr_nm256.c_snd_nm256_pcm_mark.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/nm256/extr_nm256.c_snd_nm256_pcm_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nm256 = type { i32 }
%struct.nm256_stream = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nm256*, %struct.nm256_stream*, i32)* @snd_nm256_pcm_mark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_nm256_pcm_mark(%struct.nm256* %0, %struct.nm256_stream* %1, i32 %2) #0 {
  %4 = alloca %struct.nm256*, align 8
  %5 = alloca %struct.nm256_stream*, align 8
  %6 = alloca i32, align 4
  store %struct.nm256* %0, %struct.nm256** %4, align 8
  store %struct.nm256_stream* %1, %struct.nm256_stream** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.nm256_stream*, %struct.nm256_stream** %5, align 8
  %8 = getelementptr inbounds %struct.nm256_stream, %struct.nm256_stream* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %8, align 8
  %11 = load %struct.nm256_stream*, %struct.nm256_stream** %5, align 8
  %12 = getelementptr inbounds %struct.nm256_stream, %struct.nm256_stream* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.nm256_stream*, %struct.nm256_stream** %5, align 8
  %15 = getelementptr inbounds %struct.nm256_stream, %struct.nm256_stream* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = srem i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load %struct.nm256*, %struct.nm256** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.nm256_stream*, %struct.nm256_stream** %5, align 8
  %21 = getelementptr inbounds %struct.nm256_stream, %struct.nm256_stream* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.nm256_stream*, %struct.nm256_stream** %5, align 8
  %24 = getelementptr inbounds %struct.nm256_stream, %struct.nm256_stream* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.nm256_stream*, %struct.nm256_stream** %5, align 8
  %27 = getelementptr inbounds %struct.nm256_stream, %struct.nm256_stream* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = mul nsw i32 %25, %28
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %22, %30
  %32 = call i32 @snd_nm256_writel(%struct.nm256* %18, i32 %19, i64 %31)
  ret void
}

declare dso_local i32 @snd_nm256_writel(%struct.nm256*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
