; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_alsa.c_reset.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_alsa.c_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { i64, %struct.priv* }
%struct.priv = type { i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [18 x i8] c"pcm prepare error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ao*)* @reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset(%struct.ao* %0) #0 {
  %2 = alloca %struct.ao*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca i32, align 4
  store %struct.ao* %0, %struct.ao** %2, align 8
  %5 = load %struct.ao*, %struct.ao** %2, align 8
  %6 = getelementptr inbounds %struct.ao, %struct.ao* %5, i32 0, i32 1
  %7 = load %struct.priv*, %struct.priv** %6, align 8
  store %struct.priv* %7, %struct.priv** %3, align 8
  %8 = load %struct.priv*, %struct.priv** %3, align 8
  %9 = getelementptr inbounds %struct.priv, %struct.priv* %8, i32 0, i32 0
  store i32 0, i32* %9, align 8
  %10 = load %struct.priv*, %struct.priv** %3, align 8
  %11 = getelementptr inbounds %struct.priv, %struct.priv* %10, i32 0, i32 4
  store i64 0, i64* %11, align 8
  %12 = load %struct.priv*, %struct.priv** %3, align 8
  %13 = getelementptr inbounds %struct.priv, %struct.priv* %12, i32 0, i32 3
  store i64 0, i64* %13, align 8
  %14 = load %struct.priv*, %struct.priv** %3, align 8
  %15 = getelementptr inbounds %struct.priv, %struct.priv* %14, i32 0, i32 1
  store i32 0, i32* %15, align 4
  %16 = load %struct.ao*, %struct.ao** %2, align 8
  %17 = getelementptr inbounds %struct.ao, %struct.ao* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.ao*, %struct.ao** %2, align 8
  %22 = call i32 @soft_reset(%struct.ao* %21)
  br label %34

23:                                               ; preds = %1
  %24 = load %struct.priv*, %struct.priv** %3, align 8
  %25 = getelementptr inbounds %struct.priv, %struct.priv* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @snd_pcm_drop(i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = call i32 @CHECK_ALSA_ERROR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.priv*, %struct.priv** %3, align 8
  %30 = getelementptr inbounds %struct.priv, %struct.priv* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @snd_pcm_prepare(i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = call i32 @CHECK_ALSA_ERROR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %23, %20
  br label %35

35:                                               ; preds = %34
  ret void
}

declare dso_local i32 @soft_reset(%struct.ao*) #1

declare dso_local i32 @snd_pcm_drop(i32) #1

declare dso_local i32 @CHECK_ALSA_ERROR(i8*) #1

declare dso_local i32 @snd_pcm_prepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
