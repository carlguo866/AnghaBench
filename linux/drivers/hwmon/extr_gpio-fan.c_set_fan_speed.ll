; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_gpio-fan.c_set_fan_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_gpio-fan.c_set_fan_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_fan_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_fan_data*, i32)* @set_fan_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_fan_speed(%struct.gpio_fan_data* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_fan_data*, align 8
  %4 = alloca i32, align 4
  store %struct.gpio_fan_data* %0, %struct.gpio_fan_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.gpio_fan_data*, %struct.gpio_fan_data** %3, align 8
  %6 = getelementptr inbounds %struct.gpio_fan_data, %struct.gpio_fan_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %25

11:                                               ; preds = %2
  %12 = load %struct.gpio_fan_data*, %struct.gpio_fan_data** %3, align 8
  %13 = load %struct.gpio_fan_data*, %struct.gpio_fan_data** %3, align 8
  %14 = getelementptr inbounds %struct.gpio_fan_data, %struct.gpio_fan_data* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @__set_fan_ctrl(%struct.gpio_fan_data* %12, i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.gpio_fan_data*, %struct.gpio_fan_data** %3, align 8
  %24 = getelementptr inbounds %struct.gpio_fan_data, %struct.gpio_fan_data* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  br label %25

25:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @__set_fan_ctrl(%struct.gpio_fan_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
