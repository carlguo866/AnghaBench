; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7604.c_adv7604_read_cable_det.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7604.c_adv7604_read_cable_det.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @adv7604_read_cable_det to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7604_read_cable_det(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %4 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %5 = call i32 @io_read(%struct.v4l2_subdev* %4, i32 111)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = and i32 %6, 16
  %8 = ashr i32 %7, 4
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, 8
  %11 = ashr i32 %10, 2
  %12 = or i32 %8, %11
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, 4
  %15 = shl i32 %14, 0
  %16 = or i32 %12, %15
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, 2
  %19 = shl i32 %18, 2
  %20 = or i32 %16, %19
  ret i32 %20
}

declare dso_local i32 @io_read(%struct.v4l2_subdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
