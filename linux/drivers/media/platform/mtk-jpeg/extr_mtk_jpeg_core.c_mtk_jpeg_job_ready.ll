; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_core.c_mtk_jpeg_job_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_core.c_mtk_jpeg_job_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_jpeg_ctx = type { i64 }

@MTK_JPEG_RUNNING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @mtk_jpeg_job_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_jpeg_job_ready(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mtk_jpeg_ctx*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.mtk_jpeg_ctx*
  store %struct.mtk_jpeg_ctx* %5, %struct.mtk_jpeg_ctx** %3, align 8
  %6 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @MTK_JPEG_RUNNING, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 1, i32 0
  ret i32 %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
