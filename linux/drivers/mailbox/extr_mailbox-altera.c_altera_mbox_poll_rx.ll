; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox-altera.c_altera_mbox_poll_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox-altera.c_altera_mbox_poll_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_mbox = type { i32, i32 }
%struct.timer_list = type { i32 }

@rxpoll_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@MBOX_POLLING_MS = common dso_local global i32 0, align 4
@mbox = common dso_local global %struct.altera_mbox* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @altera_mbox_poll_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @altera_mbox_poll_rx(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.altera_mbox*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.altera_mbox*, %struct.altera_mbox** %3, align 8
  %5 = ptrtoint %struct.altera_mbox* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @rxpoll_timer, align 4
  %8 = call %struct.altera_mbox* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.altera_mbox* %8, %struct.altera_mbox** %3, align 8
  %9 = load %struct.altera_mbox*, %struct.altera_mbox** %3, align 8
  %10 = getelementptr inbounds %struct.altera_mbox, %struct.altera_mbox* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @altera_mbox_rx_data(i32 %11)
  %13 = load %struct.altera_mbox*, %struct.altera_mbox** %3, align 8
  %14 = getelementptr inbounds %struct.altera_mbox, %struct.altera_mbox* %13, i32 0, i32 0
  %15 = load i64, i64* @jiffies, align 8
  %16 = load i32, i32* @MBOX_POLLING_MS, align 4
  %17 = call i64 @msecs_to_jiffies(i32 %16)
  %18 = add nsw i64 %15, %17
  %19 = call i32 @mod_timer(i32* %14, i64 %18)
  ret void
}

declare dso_local %struct.altera_mbox* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @altera_mbox_rx_data(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
