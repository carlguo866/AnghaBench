; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_video-i2c.c_amg88xx_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_video-i2c.c_amg88xx_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_i2c_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@AMG88XX_FPSC_1FPS = common dso_local global i32 0, align 4
@AMG88XX_REG_FPSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.video_i2c_data*)* @amg88xx_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amg88xx_setup(%struct.video_i2c_data* %0) #0 {
  %2 = alloca %struct.video_i2c_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.video_i2c_data* %0, %struct.video_i2c_data** %2, align 8
  %5 = load i32, i32* @AMG88XX_FPSC_1FPS, align 4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.video_i2c_data*, %struct.video_i2c_data** %2, align 8
  %7 = getelementptr inbounds %struct.video_i2c_data, %struct.video_i2c_data* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.video_i2c_data*, %struct.video_i2c_data** %2, align 8
  %11 = getelementptr inbounds %struct.video_i2c_data, %struct.video_i2c_data* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %9, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  store i32 %16, i32* %4, align 4
  br label %18

17:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %17, %15
  %19 = load %struct.video_i2c_data*, %struct.video_i2c_data** %2, align 8
  %20 = getelementptr inbounds %struct.video_i2c_data, %struct.video_i2c_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @AMG88XX_REG_FPSC, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @regmap_update_bits(i32 %21, i32 %22, i32 %23, i32 %24)
  ret i32 %25
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
