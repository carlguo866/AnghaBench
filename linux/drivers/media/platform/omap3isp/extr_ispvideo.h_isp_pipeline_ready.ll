; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispvideo.h_isp_pipeline_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispvideo.h_isp_pipeline_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_pipeline = type { i32 }

@ISP_PIPELINE_STREAM_INPUT = common dso_local global i32 0, align 4
@ISP_PIPELINE_STREAM_OUTPUT = common dso_local global i32 0, align 4
@ISP_PIPELINE_QUEUE_INPUT = common dso_local global i32 0, align 4
@ISP_PIPELINE_QUEUE_OUTPUT = common dso_local global i32 0, align 4
@ISP_PIPELINE_IDLE_INPUT = common dso_local global i32 0, align 4
@ISP_PIPELINE_IDLE_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isp_pipeline*)* @isp_pipeline_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_pipeline_ready(%struct.isp_pipeline* %0) #0 {
  %2 = alloca %struct.isp_pipeline*, align 8
  store %struct.isp_pipeline* %0, %struct.isp_pipeline** %2, align 8
  %3 = load %struct.isp_pipeline*, %struct.isp_pipeline** %2, align 8
  %4 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @ISP_PIPELINE_STREAM_INPUT, align 4
  %7 = load i32, i32* @ISP_PIPELINE_STREAM_OUTPUT, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @ISP_PIPELINE_QUEUE_INPUT, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @ISP_PIPELINE_QUEUE_OUTPUT, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @ISP_PIPELINE_IDLE_INPUT, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @ISP_PIPELINE_IDLE_OUTPUT, align 4
  %16 = or i32 %14, %15
  %17 = icmp eq i32 %5, %16
  %18 = zext i1 %17 to i32
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
