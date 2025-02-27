; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_core.c_snd_vx_irq_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_core.c_snd_vx_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32, i32 }

@VX_STAT_CHIP_INIT = common dso_local global i32 0, align 4
@VX_STAT_IS_STALE = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_vx_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vx_core*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.vx_core*
  store %struct.vx_core* %8, %struct.vx_core** %6, align 8
  %9 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %10 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @VX_STAT_CHIP_INIT, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %17 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @VX_STAT_IS_STALE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15, %2
  %23 = load i32, i32* @IRQ_NONE, align 4
  store i32 %23, i32* %3, align 4
  br label %34

24:                                               ; preds = %15
  %25 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %26 = call i32 @vx_test_and_ack(%struct.vx_core* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %30 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %29, i32 0, i32 1
  %31 = call i32 @tasklet_schedule(i32* %30)
  br label %32

32:                                               ; preds = %28, %24
  %33 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %22
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @vx_test_and_ack(%struct.vx_core*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
