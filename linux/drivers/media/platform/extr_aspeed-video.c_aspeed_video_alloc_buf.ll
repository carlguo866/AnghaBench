; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_aspeed-video.c_aspeed_video_alloc_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_aspeed-video.c_aspeed_video_alloc_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_video = type { i32 }
%struct.aspeed_video_addr = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aspeed_video*, %struct.aspeed_video_addr*, i32)* @aspeed_video_alloc_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_video_alloc_buf(%struct.aspeed_video* %0, %struct.aspeed_video_addr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.aspeed_video*, align 8
  %6 = alloca %struct.aspeed_video_addr*, align 8
  %7 = alloca i32, align 4
  store %struct.aspeed_video* %0, %struct.aspeed_video** %5, align 8
  store %struct.aspeed_video_addr* %1, %struct.aspeed_video_addr** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.aspeed_video*, %struct.aspeed_video** %5, align 8
  %9 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.aspeed_video_addr*, %struct.aspeed_video_addr** %6, align 8
  %13 = getelementptr inbounds %struct.aspeed_video_addr, %struct.aspeed_video_addr* %12, i32 0, i32 2
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i32 @dma_alloc_coherent(i32 %10, i32 %11, i32* %13, i32 %14)
  %16 = load %struct.aspeed_video_addr*, %struct.aspeed_video_addr** %6, align 8
  %17 = getelementptr inbounds %struct.aspeed_video_addr, %struct.aspeed_video_addr* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.aspeed_video_addr*, %struct.aspeed_video_addr** %6, align 8
  %19 = getelementptr inbounds %struct.aspeed_video_addr, %struct.aspeed_video_addr* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %27

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.aspeed_video_addr*, %struct.aspeed_video_addr** %6, align 8
  %26 = getelementptr inbounds %struct.aspeed_video_addr, %struct.aspeed_video_addr* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  store i32 1, i32* %4, align 4
  br label %27

27:                                               ; preds = %23, %22
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @dma_alloc_coherent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
