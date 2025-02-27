; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_hv_kvp.c_kvp_on_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_hv_kvp.c_kvp_on_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@kvp_timeout_work = common dso_local global i32 0, align 4
@HV_E_FAIL = common dso_local global i32 0, align 4
@HVUTIL_DEVICE_INIT = common dso_local global i32 0, align 4
@kvp_transaction = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @kvp_on_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvp_on_reset() #0 {
  %1 = call i64 @cancel_delayed_work_sync(i32* @kvp_timeout_work)
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32, i32* @HV_E_FAIL, align 4
  %5 = call i32 @kvp_respond_to_host(i32* null, i32 %4)
  br label %6

6:                                                ; preds = %3, %0
  %7 = load i32, i32* @HVUTIL_DEVICE_INIT, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kvp_transaction, i32 0, i32 0), align 4
  ret void
}

declare dso_local i64 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @kvp_respond_to_host(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
