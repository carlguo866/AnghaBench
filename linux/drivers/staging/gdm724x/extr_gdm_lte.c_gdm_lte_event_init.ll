; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_lte.c_gdm_lte_event_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_lte.c_gdm_lte_event_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@lte_event = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@NETLINK_LTE = common dso_local global i32 0, align 4
@gdm_lte_event_rcv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"event init failed\0A\00", align 1
@ENODATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdm_lte_event_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lte_event, i32 0, i32 0), align 8
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = load i32, i32* @NETLINK_LTE, align 4
  %6 = load i32, i32* @gdm_lte_event_rcv, align 4
  %7 = call i64 @netlink_init(i32 %5, i32 %6)
  store i64 %7, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lte_event, i32 0, i32 1), align 8
  br label %8

8:                                                ; preds = %4, %0
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lte_event, i32 0, i32 1), align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lte_event, i32 0, i32 0), align 8
  %13 = add nsw i64 %12, 1
  store i64 %13, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lte_event, i32 0, i32 0), align 8
  store i32 0, i32* %1, align 4
  br label %18

14:                                               ; preds = %8
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENODATA, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %1, align 4
  br label %18

18:                                               ; preds = %14, %11
  %19 = load i32, i32* %1, align 4
  ret i32 %19
}

declare dso_local i64 @netlink_init(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
