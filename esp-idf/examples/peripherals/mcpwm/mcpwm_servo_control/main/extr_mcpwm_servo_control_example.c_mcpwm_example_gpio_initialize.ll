; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/mcpwm/mcpwm_servo_control/main/extr_mcpwm_servo_control_example.c_mcpwm_example_gpio_initialize.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/mcpwm/mcpwm_servo_control/main/extr_mcpwm_servo_control_example.c_mcpwm_example_gpio_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [45 x i8] c"initializing mcpwm servo control gpio......\0A\00", align 1
@MCPWM_UNIT_0 = common dso_local global i32 0, align 4
@MCPWM0A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mcpwm_example_gpio_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcpwm_example_gpio_initialize() #0 {
  %1 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %2 = load i32, i32* @MCPWM_UNIT_0, align 4
  %3 = load i32, i32* @MCPWM0A, align 4
  %4 = call i32 @mcpwm_gpio_init(i32 %2, i32 %3, i32 18)
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @mcpwm_gpio_init(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
