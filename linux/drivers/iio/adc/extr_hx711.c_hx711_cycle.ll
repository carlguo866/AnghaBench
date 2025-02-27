; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_hx711.c_hx711_cycle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_hx711.c_hx711_cycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hx711_data = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hx711_data*)* @hx711_cycle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hx711_cycle(%struct.hx711_data* %0) #0 {
  %2 = alloca %struct.hx711_data*, align 8
  %3 = alloca i64, align 8
  store %struct.hx711_data* %0, %struct.hx711_data** %2, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i32 @local_irq_save(i64 %4)
  %6 = load %struct.hx711_data*, %struct.hx711_data** %2, align 8
  %7 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @gpiod_set_value(i32 %8, i32 1)
  %10 = load %struct.hx711_data*, %struct.hx711_data** %2, align 8
  %11 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ndelay(i32 %12)
  %14 = load %struct.hx711_data*, %struct.hx711_data** %2, align 8
  %15 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @gpiod_set_value(i32 %16, i32 0)
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @local_irq_restore(i64 %18)
  %20 = load %struct.hx711_data*, %struct.hx711_data** %2, align 8
  %21 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ndelay(i32 %22)
  %24 = load %struct.hx711_data*, %struct.hx711_data** %2, align 8
  %25 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @gpiod_get_value(i32 %26)
  ret i32 %27
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @ndelay(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @gpiod_get_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
