; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_aspeed-video.c_aspeed_video_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_aspeed-video.c_aspeed_video_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_video = type { i64, i32 }

@.str = private unnamed_addr constant [18 x i8] c"write %03x[%08x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aspeed_video*, i64, i64)* @aspeed_video_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aspeed_video_write(%struct.aspeed_video* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.aspeed_video*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.aspeed_video* %0, %struct.aspeed_video** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.aspeed_video*, %struct.aspeed_video** %4, align 8
  %9 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %5, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @writel(i64 %7, i64 %12)
  %14 = load %struct.aspeed_video*, %struct.aspeed_video** %4, align 8
  %15 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.aspeed_video*, %struct.aspeed_video** %4, align 8
  %19 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readl(i64 %22)
  %24 = call i32 @dev_dbg(i32 %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %17, i32 %23)
  ret void
}

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
