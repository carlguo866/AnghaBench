; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_omap24xxcam_stalled_dma_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_omap24xxcam_stalled_dma_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap24xxcam_device = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"dma stalled, resetting camera\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @omap24xxcam_stalled_dma_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap24xxcam_stalled_dma_reset(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.omap24xxcam_device*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.omap24xxcam_device*
  store %struct.omap24xxcam_device* %5, %struct.omap24xxcam_device** %3, align 8
  %6 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %7 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %6, i32 0, i32 1
  %8 = call i32 @atomic_read(i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %12 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dev_dbg(i32 %13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %16 = call i32 @omap24xxcam_reset(%struct.omap24xxcam_device* %15)
  br label %17

17:                                               ; preds = %10, %1
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @omap24xxcam_reset(%struct.omap24xxcam_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
