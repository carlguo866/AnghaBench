; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_sdio_slave.c_send_start.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_sdio_slave.c_send_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@STATE_IDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"already started\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@SLC = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@STATE_WAIT_FOR_START = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @send_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_start() #0 {
  %1 = call i64 (...) @send_get_state()
  %2 = load i64, i64* @STATE_IDLE, align 8
  %3 = icmp eq i64 %1, %2
  %4 = zext i1 %3 to i32
  %5 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %6 = call i32 @SDIO_SLAVE_CHECK(i32 %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %5)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SLC, i32 0, i32 0, i32 0), align 4
  %7 = load i32, i32* @STATE_WAIT_FOR_START, align 4
  %8 = call i32 @send_set_state(i32 %7)
  %9 = call i32 (...) @send_intr_enable()
  %10 = load i32, i32* @ESP_OK, align 4
  ret i32 %10
}

declare dso_local i32 @SDIO_SLAVE_CHECK(i32, i8*, i32) #1

declare dso_local i64 @send_get_state(...) #1

declare dso_local i32 @send_set_state(i32) #1

declare dso_local i32 @send_intr_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
