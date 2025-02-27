; ModuleID = '/home/carl/AnghaBench/linux/net/lapb/extr_lapb_timer.c_lapb_t2timer_expiry.c'
source_filename = "/home/carl/AnghaBench/linux/net/lapb/extr_lapb_timer.c_lapb_t2timer_expiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lapb_cb = type { i32 }
%struct.timer_list = type { i32 }

@t2timer = common dso_local global i32 0, align 4
@LAPB_ACK_PENDING_CONDITION = common dso_local global i32 0, align 4
@lapb = common dso_local global %struct.lapb_cb* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @lapb_t2timer_expiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lapb_t2timer_expiry(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.lapb_cb*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %5 = ptrtoint %struct.lapb_cb* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @t2timer, align 4
  %8 = call %struct.lapb_cb* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.lapb_cb* %8, %struct.lapb_cb** %3, align 8
  %9 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %10 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @LAPB_ACK_PENDING_CONDITION, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load i32, i32* @LAPB_ACK_PENDING_CONDITION, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %19 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %23 = call i32 @lapb_timeout_response(%struct.lapb_cb* %22)
  br label %24

24:                                               ; preds = %15, %1
  ret void
}

declare dso_local %struct.lapb_cb* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @lapb_timeout_response(%struct.lapb_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
