; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp.c___sclp_set_request_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp.c___sclp_set_request_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { void (i64)*, i64, i64 }

@sclp_request_timer = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, void (i64)*, i64)* @__sclp_set_request_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__sclp_set_request_timer(i64 %0, void (i64)* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca void (i64)*, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store void (i64)* %1, void (i64)** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = call i32 @del_timer(%struct.TYPE_4__* @sclp_request_timer)
  %8 = load void (i64)*, void (i64)** %5, align 8
  store void (i64)* %8, void (i64)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sclp_request_timer, i32 0, i32 0), align 8
  %9 = load i64, i64* %6, align 8
  store i64 %9, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sclp_request_timer, i32 0, i32 1), align 8
  %10 = load i64, i64* @jiffies, align 8
  %11 = load i64, i64* %4, align 8
  %12 = add i64 %10, %11
  store i64 %12, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sclp_request_timer, i32 0, i32 2), align 8
  %13 = call i32 @add_timer(%struct.TYPE_4__* @sclp_request_timer)
  ret void
}

declare dso_local i32 @del_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
