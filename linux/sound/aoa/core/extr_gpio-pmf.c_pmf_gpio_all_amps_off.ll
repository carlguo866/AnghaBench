; ModuleID = '/home/carl/AnghaBench/linux/sound/aoa/core/extr_gpio-pmf.c_pmf_gpio_all_amps_off.c'
source_filename = "/home/carl/AnghaBench/linux/sound/aoa/core/extr_gpio-pmf.c_pmf_gpio_all_amps_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_runtime = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_runtime*)* @pmf_gpio_all_amps_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmf_gpio_all_amps_off(%struct.gpio_runtime* %0) #0 {
  %2 = alloca %struct.gpio_runtime*, align 8
  %3 = alloca i32, align 4
  store %struct.gpio_runtime* %0, %struct.gpio_runtime** %2, align 8
  %4 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %5 = icmp ne %struct.gpio_runtime* %4, null
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i64 @unlikely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %24

11:                                               ; preds = %1
  %12 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %13 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %3, align 4
  %15 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %16 = call i32 @pmf_gpio_set_headphone(%struct.gpio_runtime* %15, i32 0)
  %17 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %18 = call i32 @pmf_gpio_set_amp(%struct.gpio_runtime* %17, i32 0)
  %19 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %20 = call i32 @pmf_gpio_set_lineout(%struct.gpio_runtime* %19, i32 0)
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %23 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  br label %24

24:                                               ; preds = %11, %10
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pmf_gpio_set_headphone(%struct.gpio_runtime*, i32) #1

declare dso_local i32 @pmf_gpio_set_amp(%struct.gpio_runtime*, i32) #1

declare dso_local i32 @pmf_gpio_set_lineout(%struct.gpio_runtime*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
