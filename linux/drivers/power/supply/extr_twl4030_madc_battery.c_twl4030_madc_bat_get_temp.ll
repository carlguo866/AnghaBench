; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_twl4030_madc_battery.c_twl4030_madc_bat_get_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_twl4030_madc_battery.c_twl4030_madc_bat_get_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl4030_madc_battery = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twl4030_madc_battery*)* @twl4030_madc_bat_get_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_madc_bat_get_temp(%struct.twl4030_madc_battery* %0) #0 {
  %2 = alloca %struct.twl4030_madc_battery*, align 8
  store %struct.twl4030_madc_battery* %0, %struct.twl4030_madc_battery** %2, align 8
  %3 = load %struct.twl4030_madc_battery*, %struct.twl4030_madc_battery** %2, align 8
  %4 = getelementptr inbounds %struct.twl4030_madc_battery, %struct.twl4030_madc_battery* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @madc_read(i32 %5)
  %7 = mul nsw i32 %6, 10
  ret i32 %7
}

declare dso_local i32 @madc_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
