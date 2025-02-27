; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sgi-ip32/extr_ip32-reset.c_panic_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sgi-ip32/extr_ip32-reset.c_panic_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.notifier_block = type { i32 }

@has_panicked = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@mace = common dso_local global %struct.TYPE_6__* null, align 8
@MACEISA_LED_GREEN = common dso_local global i64 0, align 8
@PANIC_FREQ = common dso_local global i32 0, align 4
@blink_timer_timeout = common dso_local global i32 0, align 4
@blink_timer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @panic_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panic_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* @has_panicked, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %12, i32* %4, align 4
  br label %29

13:                                               ; preds = %3
  store i32 1, i32* @has_panicked, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mace, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MACEISA_LED_GREEN, align 8
  %20 = or i64 %18, %19
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mace, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i64 %21, i64* %25, align 8
  %26 = load i32, i32* @PANIC_FREQ, align 4
  store i32 %26, i32* @blink_timer_timeout, align 4
  %27 = call i32 @blink_timeout(i32* @blink_timer)
  %28 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %13, %11
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @blink_timeout(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
