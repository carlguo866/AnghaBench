; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_ep93xx_pwm.c_ep93xx_pwm_read_tc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_ep93xx_pwm.c_ep93xx_pwm_read_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ep93xx_pwm = type { i32 }

@EP93XX_PWMx_TERM_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ep93xx_pwm*)* @ep93xx_pwm_read_tc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_pwm_read_tc(%struct.ep93xx_pwm* %0) #0 {
  %2 = alloca %struct.ep93xx_pwm*, align 8
  store %struct.ep93xx_pwm* %0, %struct.ep93xx_pwm** %2, align 8
  %3 = load %struct.ep93xx_pwm*, %struct.ep93xx_pwm** %2, align 8
  %4 = load i32, i32* @EP93XX_PWMx_TERM_COUNT, align 4
  %5 = call i32 @ep93xx_pwm_readl(%struct.ep93xx_pwm* %3, i32 %4)
  ret i32 %5
}

declare dso_local i32 @ep93xx_pwm_readl(%struct.ep93xx_pwm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
