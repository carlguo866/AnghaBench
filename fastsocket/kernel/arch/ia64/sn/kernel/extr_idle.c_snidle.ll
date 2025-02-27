; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_idle.c_snidle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_idle.c_snidle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@pda = common dso_local global %struct.TYPE_2__* null, align 8
@LED_CPU_ACTIVITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snidle(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pda, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = load i32, i32* @LED_CPU_ACTIVITY, align 4
  %12 = call i32 @set_led_bits(i32 0, i32 %11)
  br label %13

13:                                               ; preds = %10, %5
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pda, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  br label %22

16:                                               ; preds = %1
  %17 = load i32, i32* @LED_CPU_ACTIVITY, align 4
  %18 = load i32, i32* @LED_CPU_ACTIVITY, align 4
  %19 = call i32 @set_led_bits(i32 %17, i32 %18)
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pda, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  br label %22

22:                                               ; preds = %16, %13
  ret void
}

declare dso_local i32 @set_led_bits(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
