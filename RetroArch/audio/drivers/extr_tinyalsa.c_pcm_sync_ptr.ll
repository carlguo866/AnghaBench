; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/drivers/extr_tinyalsa.c_pcm_sync_ptr.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/drivers/extr_tinyalsa.c_pcm_sync_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@SNDRV_PCM_IOCTL_SYNC_PTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcm*, i32)* @pcm_sync_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm_sync_ptr(%struct.pcm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcm*, align 8
  %5 = alloca i32, align 4
  store %struct.pcm* %0, %struct.pcm** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.pcm*, %struct.pcm** %4, align 8
  %7 = getelementptr inbounds %struct.pcm, %struct.pcm* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %27

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.pcm*, %struct.pcm** %4, align 8
  %13 = getelementptr inbounds %struct.pcm, %struct.pcm* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %11, i32* %15, align 4
  %16 = load %struct.pcm*, %struct.pcm** %4, align 8
  %17 = getelementptr inbounds %struct.pcm, %struct.pcm* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SNDRV_PCM_IOCTL_SYNC_PTR, align 4
  %20 = load %struct.pcm*, %struct.pcm** %4, align 8
  %21 = getelementptr inbounds %struct.pcm, %struct.pcm* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = call i64 @ioctl(i32 %18, i32 %19, %struct.TYPE_2__* %22)
  %24 = icmp sge i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %28

26:                                               ; preds = %10
  br label %27

27:                                               ; preds = %26, %2
  store i32 -1, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %25
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i64 @ioctl(i32, i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
