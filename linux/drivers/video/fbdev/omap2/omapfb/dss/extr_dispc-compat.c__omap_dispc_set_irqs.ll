; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc-compat.c__omap_dispc_set_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc-compat.c__omap_dispc_set_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.omap_dispc_isr_data*, i32 }
%struct.omap_dispc_isr_data = type { i32, i32* }

@dispc_compat = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@DISPC_MAX_NR_ISRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @_omap_dispc_set_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_omap_dispc_set_irqs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_dispc_isr_data*, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dispc_compat, i32 0, i32 1), align 8
  store i32 %4, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %25, %0
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @DISPC_MAX_NR_ISRS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %28

9:                                                ; preds = %5
  %10 = load %struct.omap_dispc_isr_data*, %struct.omap_dispc_isr_data** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dispc_compat, i32 0, i32 0), align 8
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.omap_dispc_isr_data, %struct.omap_dispc_isr_data* %10, i64 %12
  store %struct.omap_dispc_isr_data* %13, %struct.omap_dispc_isr_data** %3, align 8
  %14 = load %struct.omap_dispc_isr_data*, %struct.omap_dispc_isr_data** %3, align 8
  %15 = getelementptr inbounds %struct.omap_dispc_isr_data, %struct.omap_dispc_isr_data* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  br label %25

19:                                               ; preds = %9
  %20 = load %struct.omap_dispc_isr_data*, %struct.omap_dispc_isr_data** %3, align 8
  %21 = getelementptr inbounds %struct.omap_dispc_isr_data, %struct.omap_dispc_isr_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %1, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %1, align 4
  br label %25

25:                                               ; preds = %19, %18
  %26 = load i32, i32* %2, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %2, align 4
  br label %5

28:                                               ; preds = %5
  %29 = load i32, i32* %1, align 4
  %30 = call i32 @dispc_write_irqenable(i32 %29)
  ret void
}

declare dso_local i32 @dispc_write_irqenable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
