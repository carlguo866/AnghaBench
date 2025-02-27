; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_drv.c_hantro_irq_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_drv.c_hantro_irq_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hantro_dev = type { i32, i32 }
%struct.hantro_ctx = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hantro_irq_done(%struct.hantro_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hantro_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hantro_ctx*, align 8
  store %struct.hantro_dev* %0, %struct.hantro_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %9 = getelementptr inbounds %struct.hantro_dev, %struct.hantro_dev* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.hantro_ctx* @v4l2_m2m_get_curr_priv(i32 %10)
  store %struct.hantro_ctx* %11, %struct.hantro_ctx** %7, align 8
  %12 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %13 = getelementptr inbounds %struct.hantro_dev, %struct.hantro_dev* %12, i32 0, i32 0
  %14 = call i64 @cancel_delayed_work(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %18 = load %struct.hantro_ctx*, %struct.hantro_ctx** %7, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @hantro_job_finish(%struct.hantro_dev* %17, %struct.hantro_ctx* %18, i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %16, %3
  ret void
}

declare dso_local %struct.hantro_ctx* @v4l2_m2m_get_curr_priv(i32) #1

declare dso_local i64 @cancel_delayed_work(i32*) #1

declare dso_local i32 @hantro_job_finish(%struct.hantro_dev*, %struct.hantro_ctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
