; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_util.c_mtk_vcodec_get_curr_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_util.c_mtk_vcodec_get_curr_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_vcodec_ctx = type { i32 }
%struct.mtk_vcodec_dev = type { i32, %struct.mtk_vcodec_ctx* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mtk_vcodec_ctx* @mtk_vcodec_get_curr_ctx(%struct.mtk_vcodec_dev* %0) #0 {
  %2 = alloca %struct.mtk_vcodec_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.mtk_vcodec_ctx*, align 8
  store %struct.mtk_vcodec_dev* %0, %struct.mtk_vcodec_dev** %2, align 8
  %5 = load %struct.mtk_vcodec_dev*, %struct.mtk_vcodec_dev** %2, align 8
  %6 = getelementptr inbounds %struct.mtk_vcodec_dev, %struct.mtk_vcodec_dev* %5, i32 0, i32 0
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.mtk_vcodec_dev*, %struct.mtk_vcodec_dev** %2, align 8
  %10 = getelementptr inbounds %struct.mtk_vcodec_dev, %struct.mtk_vcodec_dev* %9, i32 0, i32 1
  %11 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %10, align 8
  store %struct.mtk_vcodec_ctx* %11, %struct.mtk_vcodec_ctx** %4, align 8
  %12 = load %struct.mtk_vcodec_dev*, %struct.mtk_vcodec_dev** %2, align 8
  %13 = getelementptr inbounds %struct.mtk_vcodec_dev, %struct.mtk_vcodec_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @spin_unlock_irqrestore(i32* %13, i64 %14)
  %16 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %4, align 8
  ret %struct.mtk_vcodec_ctx* %16
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
