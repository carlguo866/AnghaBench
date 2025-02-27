; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_set_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_set_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov5640_dev = type { i32, i32 }

@OV5640_NUM_SUPPLIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ov5640_dev*)* @ov5640_set_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov5640_set_power_off(%struct.ov5640_dev* %0) #0 {
  %2 = alloca %struct.ov5640_dev*, align 8
  store %struct.ov5640_dev* %0, %struct.ov5640_dev** %2, align 8
  %3 = load %struct.ov5640_dev*, %struct.ov5640_dev** %2, align 8
  %4 = call i32 @ov5640_power(%struct.ov5640_dev* %3, i32 0)
  %5 = load i32, i32* @OV5640_NUM_SUPPLIES, align 4
  %6 = load %struct.ov5640_dev*, %struct.ov5640_dev** %2, align 8
  %7 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @regulator_bulk_disable(i32 %5, i32 %8)
  %10 = load %struct.ov5640_dev*, %struct.ov5640_dev** %2, align 8
  %11 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @clk_disable_unprepare(i32 %12)
  ret void
}

declare dso_local i32 @ov5640_power(%struct.ov5640_dev*, i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
