; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_amiflop.c_ms_delay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_amiflop.c_ms_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@ms_delay.mutex = internal global i32 0, align 4
@MS_TICKS = common dso_local global i32 0, align 4
@ciaa = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ms_wait_completion = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ms_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ms_delay(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %1
  %7 = call i32 @mutex_lock(i32* @ms_delay.mutex)
  %8 = load i32, i32* @MS_TICKS, align 4
  %9 = load i32, i32* %2, align 4
  %10 = mul nsw i32 %8, %9
  %11 = sub nsw i32 %10, 1
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = srem i32 %12, 256
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ciaa, i32 0, i32 0), align 4
  %14 = load i32, i32* %3, align 4
  %15 = sdiv i32 %14, 256
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ciaa, i32 0, i32 1), align 4
  store i32 25, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ciaa, i32 0, i32 2), align 4
  %16 = call i32 @wait_for_completion(i32* @ms_wait_completion)
  %17 = call i32 @mutex_unlock(i32* @ms_delay.mutex)
  br label %18

18:                                               ; preds = %6, %1
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
