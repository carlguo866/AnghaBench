; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_register_isr_cio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_register_isr_cio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsi_data*, i32, i8*, i32)* @dsi_register_isr_cio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_register_isr_cio(%struct.dsi_data* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.dsi_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.dsi_data* %0, %struct.dsi_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %12 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %11, i32 0, i32 0
  %13 = load i64, i64* %9, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load i32, i32* %6, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %19 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %23 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ARRAY_SIZE(i32 %25)
  %27 = call i32 @_dsi_register_isr(i32 %15, i8* %16, i32 %17, i32 %21, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %32 = call i32 @_omap_dsi_set_irqs_cio(%struct.dsi_data* %31)
  br label %33

33:                                               ; preds = %30, %4
  %34 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %35 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %34, i32 0, i32 0
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  %38 = load i32, i32* %10, align 4
  ret i32 %38
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @_dsi_register_isr(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @_omap_dsi_set_irqs_cio(%struct.dsi_data*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
