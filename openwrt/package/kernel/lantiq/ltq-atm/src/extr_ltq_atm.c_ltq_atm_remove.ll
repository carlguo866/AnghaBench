; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-atm/src/extr_ltq_atm.c_ltq_atm_remove.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-atm/src/extr_ltq_atm.c_ltq_atm_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.platform_device = type { i32 }
%struct.ltq_atm_ops = type { i32 (...)*, i32 (i32)* }

@ifx_mei_atm_showtime_enter = common dso_local global i32* null, align 8
@ifx_mei_atm_showtime_exit = common dso_local global i32* null, align 8
@PPE_MAILBOX_IGU1_INT = common dso_local global i32 0, align 4
@g_atm_priv_data = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@ATM_PORT_NUMBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ltq_atm_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltq_atm_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ltq_atm_ops*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.ltq_atm_ops* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.ltq_atm_ops* %6, %struct.ltq_atm_ops** %4, align 8
  store i32* null, i32** @ifx_mei_atm_showtime_enter, align 8
  store i32* null, i32** @ifx_mei_atm_showtime_exit, align 8
  %7 = call i32 (...) @invalidate_oam_htu_entry()
  %8 = load %struct.ltq_atm_ops*, %struct.ltq_atm_ops** %4, align 8
  %9 = getelementptr inbounds %struct.ltq_atm_ops, %struct.ltq_atm_ops* %8, i32 0, i32 1
  %10 = load i32 (i32)*, i32 (i32)** %9, align 8
  %11 = call i32 %10(i32 0)
  %12 = load i32, i32* @PPE_MAILBOX_IGU1_INT, align 4
  %13 = call i32 @free_irq(i32 %12, %struct.TYPE_5__* @g_atm_priv_data)
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %26, %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @ATM_PORT_NUMBER, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_atm_priv_data, i32 0, i32 0), align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @atm_dev_deregister(i32 %24)
  br label %26

26:                                               ; preds = %18
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %14

29:                                               ; preds = %14
  %30 = load %struct.ltq_atm_ops*, %struct.ltq_atm_ops** %4, align 8
  %31 = getelementptr inbounds %struct.ltq_atm_ops, %struct.ltq_atm_ops* %30, i32 0, i32 0
  %32 = load i32 (...)*, i32 (...)** %31, align 8
  %33 = call i32 (...) %32()
  %34 = call i32 (...) @clear_priv_data()
  ret i32 0
}

declare dso_local %struct.ltq_atm_ops* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @invalidate_oam_htu_entry(...) #1

declare dso_local i32 @free_irq(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @atm_dev_deregister(i32) #1

declare dso_local i32 @clear_priv_data(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
