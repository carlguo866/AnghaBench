; ModuleID = '/home/carl/AnghaBench/mongoose/examples/nRF52/http/extr_bleconfig.c_nrf_driver_interface_up.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/nRF52/http/extr_bleconfig.c_nrf_driver_interface_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"[APPL]: IPv6 interface up.\0D\0A\00", align 1
@TCP_STATE_REQUEST_CONNECTION = common dso_local global i32 0, align 4
@m_tcp_state = common dso_local global i32 0, align 4
@LED_ONE = common dso_local global i32 0, align 4
@LED_TWO = common dso_local global i32 0, align 4
@JOINING_MODE_TIMER_STOP_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nrf_driver_interface_up() #0 {
  %1 = call i32 @APPL_LOG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 (...) @sys_check_timeouts()
  %3 = load i32, i32* @TCP_STATE_REQUEST_CONNECTION, align 4
  store i32 %3, i32* @m_tcp_state, align 4
  %4 = load i32, i32* @LED_ONE, align 4
  %5 = call i32 @LEDS_OFF(i32 %4)
  %6 = load i32, i32* @LED_TWO, align 4
  %7 = call i32 @LEDS_ON(i32 %6)
  ret void
}

declare dso_local i32 @APPL_LOG(i8*) #1

declare dso_local i32 @sys_check_timeouts(...) #1

declare dso_local i32 @LEDS_OFF(i32) #1

declare dso_local i32 @LEDS_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
