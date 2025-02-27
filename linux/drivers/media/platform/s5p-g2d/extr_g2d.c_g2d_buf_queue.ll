; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-g2d/extr_g2d.c_g2d_buf_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-g2d/extr_g2d.c_g2d_buf_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }
%struct.g2d_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_buffer*)* @g2d_buf_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g2d_buf_queue(%struct.vb2_buffer* %0) #0 {
  %2 = alloca %struct.vb2_buffer*, align 8
  %3 = alloca %struct.vb2_v4l2_buffer*, align 8
  %4 = alloca %struct.g2d_ctx*, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %2, align 8
  %5 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %6 = call %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer* %5)
  store %struct.vb2_v4l2_buffer* %6, %struct.vb2_v4l2_buffer** %3, align 8
  %7 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %8 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.g2d_ctx* @vb2_get_drv_priv(i32 %9)
  store %struct.g2d_ctx* %10, %struct.g2d_ctx** %4, align 8
  %11 = load %struct.g2d_ctx*, %struct.g2d_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.g2d_ctx, %struct.g2d_ctx* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %3, align 8
  %16 = call i32 @v4l2_m2m_buf_queue(i32 %14, %struct.vb2_v4l2_buffer* %15)
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer*) #1

declare dso_local %struct.g2d_ctx* @vb2_get_drv_priv(i32) #1

declare dso_local i32 @v4l2_m2m_buf_queue(i32, %struct.vb2_v4l2_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
