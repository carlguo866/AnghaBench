; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_fxas21002c_core.c_fxas21002c_odr_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_fxas21002c_core.c_fxas21002c_odr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fxas21002c_data = type { i32 }

@F_DR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fxas21002c_data*, i32)* @fxas21002c_odr_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fxas21002c_odr_set(%struct.fxas21002c_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fxas21002c_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fxas21002c_data* %0, %struct.fxas21002c_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @fxas21002c_odr_value_from_hz(%struct.fxas21002c_data* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %19

14:                                               ; preds = %2
  %15 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %4, align 8
  %16 = load i32, i32* @F_DR, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @fxas21002c_write(%struct.fxas21002c_data* %15, i32 %16, i32 %17)
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %14, %12
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @fxas21002c_odr_value_from_hz(%struct.fxas21002c_data*, i32) #1

declare dso_local i32 @fxas21002c_write(%struct.fxas21002c_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
