; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_aspeed-video.c_aspeed_video_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_aspeed-video.c_aspeed_video_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_video = type { i32, i32, i32 }

@VIDEO_CLOCKS_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aspeed_video*)* @aspeed_video_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aspeed_video_on(%struct.aspeed_video* %0) #0 {
  %2 = alloca %struct.aspeed_video*, align 8
  store %struct.aspeed_video* %0, %struct.aspeed_video** %2, align 8
  %3 = load i32, i32* @VIDEO_CLOCKS_ON, align 4
  %4 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %5 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %4, i32 0, i32 0
  %6 = call i64 @test_bit(i32 %3, i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %22

9:                                                ; preds = %1
  %10 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %11 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @clk_enable(i32 %12)
  %14 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %15 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @clk_enable(i32 %16)
  %18 = load i32, i32* @VIDEO_CLOCKS_ON, align 4
  %19 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %20 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %19, i32 0, i32 0
  %21 = call i32 @set_bit(i32 %18, i32* %20)
  br label %22

22:                                               ; preds = %9, %8
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
