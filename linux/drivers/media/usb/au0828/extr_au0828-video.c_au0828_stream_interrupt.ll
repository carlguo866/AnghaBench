; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/au0828/extr_au0828-video.c_au0828_stream_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/au0828/extr_au0828-video.c_au0828_stream_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au0828_dev = type { i32, i32 }

@STREAM_INTERRUPT = common dso_local global i32 0, align 4
@DEV_DISCONNECTED = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.au0828_dev*)* @au0828_stream_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au0828_stream_interrupt(%struct.au0828_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.au0828_dev*, align 8
  store %struct.au0828_dev* %0, %struct.au0828_dev** %3, align 8
  %4 = load i32, i32* @STREAM_INTERRUPT, align 4
  %5 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %6 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %5, i32 0, i32 1
  store i32 %4, i32* %6, align 4
  %7 = load i32, i32* @DEV_DISCONNECTED, align 4
  %8 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %9 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %8, i32 0, i32 0
  %10 = call i64 @test_bit(i32 %7, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %15, %12
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
