; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_main.c_xpc_hb_beater.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_main.c_xpc_hb_beater.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (...)* }
%struct.TYPE_4__ = type { i64 }
%struct.timer_list = type { i32 }

@xpc_arch_ops = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@xpc_hb_check_timeout = common dso_local global i32 0, align 4
@xpc_activate_IRQ_wq = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@xpc_hb_interval = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@xpc_hb_timer = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @xpc_hb_beater to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpc_hb_beater(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %3 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xpc_arch_ops, i32 0, i32 0), align 8
  %4 = call i32 (...) %3()
  %5 = load i32, i32* @xpc_hb_check_timeout, align 4
  %6 = call i64 @time_is_before_eq_jiffies(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @wake_up_interruptible(i32* @xpc_activate_IRQ_wq)
  br label %10

10:                                               ; preds = %8, %1
  %11 = load i64, i64* @jiffies, align 8
  %12 = load i32, i32* @xpc_hb_interval, align 4
  %13 = load i32, i32* @HZ, align 4
  %14 = mul nsw i32 %12, %13
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %11, %15
  store i64 %16, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xpc_hb_timer, i32 0, i32 0), align 8
  %17 = call i32 @add_timer(%struct.TYPE_4__* @xpc_hb_timer)
  ret void
}

declare dso_local i64 @time_is_before_eq_jiffies(i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
