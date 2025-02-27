; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_sonypi.c_sonypi_camera_off.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_sonypi.c_sonypi_camera_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@SONYPI_CAMERA_PICTURE = common dso_local global i32 0, align 4
@SONYPI_CAMERA_MUTE_MASK = common dso_local global i32 0, align 4
@sonypi_device = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sonypi_camera_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sonypi_camera_off() #0 {
  %1 = load i32, i32* @SONYPI_CAMERA_PICTURE, align 4
  %2 = load i32, i32* @SONYPI_CAMERA_MUTE_MASK, align 4
  %3 = call i32 @sonypi_set(i32 %1, i32 %2)
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sonypi_device, i32 0, i32 0), align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  br label %9

7:                                                ; preds = %0
  %8 = call i32 @sonypi_call2(i32 145, i32 0)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sonypi_device, i32 0, i32 0), align 8
  br label %9

9:                                                ; preds = %7, %6
  ret void
}

declare dso_local i32 @sonypi_set(i32, i32) #1

declare dso_local i32 @sonypi_call2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
