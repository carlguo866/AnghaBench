; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5064.c_ad5064_set_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5064.c_ad5064_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad5064_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@AD5064_CMD_CONFIG_V2 = common dso_local global i32 0, align 4
@AD5064_CMD_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad5064_state*, i32)* @ad5064_set_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5064_set_config(%struct.ad5064_state* %0, i32 %1) #0 {
  %3 = alloca %struct.ad5064_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ad5064_state* %0, %struct.ad5064_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ad5064_state*, %struct.ad5064_state** %3, align 8
  %7 = getelementptr inbounds %struct.ad5064_state, %struct.ad5064_state* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %13 [
    i32 128, label %11
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @AD5064_CMD_CONFIG_V2, align 4
  store i32 %12, i32* %5, align 4
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @AD5064_CMD_CONFIG, align 4
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = load %struct.ad5064_state*, %struct.ad5064_state** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @ad5064_write(%struct.ad5064_state* %16, i32 %17, i32 0, i32 %18, i32 0)
  ret i32 %19
}

declare dso_local i32 @ad5064_write(%struct.ad5064_state*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
