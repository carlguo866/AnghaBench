; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_frame_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_frame_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cafe_camera = type { i32, i32 }

@REG_IRQSTAT = common dso_local global i32 0, align 4
@FRAMEIRQS = common dso_local global i32 0, align 4
@IRQ_EOF0 = common dso_local global i32 0, align 4
@IRQ_SOF0 = common dso_local global i32 0, align 4
@IRQ_SOF1 = common dso_local global i32 0, align 4
@IRQ_SOF2 = common dso_local global i32 0, align 4
@CF_DMA_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cafe_camera*, i32)* @cafe_frame_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cafe_frame_irq(%struct.cafe_camera* %0, i32 %1) #0 {
  %3 = alloca %struct.cafe_camera*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cafe_camera* %0, %struct.cafe_camera** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %7 = load i32, i32* @REG_IRQSTAT, align 4
  %8 = load i32, i32* @FRAMEIRQS, align 4
  %9 = call i32 @cafe_reg_write(%struct.cafe_camera* %6, i32 %7, i32 %8)
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %28, %2
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %13 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %10
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @IRQ_EOF0, align 4
  %19 = load i32, i32* %5, align 4
  %20 = shl i32 %18, %19
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @cafe_frame_complete(%struct.cafe_camera* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %16
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %5, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %10

31:                                               ; preds = %10
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @IRQ_SOF0, align 4
  %34 = load i32, i32* @IRQ_SOF1, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @IRQ_SOF2, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %32, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %31
  %41 = load i32, i32* @CF_DMA_ACTIVE, align 4
  %42 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %43 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %42, i32 0, i32 1
  %44 = call i32 @set_bit(i32 %41, i32* %43)
  br label %45

45:                                               ; preds = %40, %31
  ret void
}

declare dso_local i32 @cafe_reg_write(%struct.cafe_camera*, i32, i32) #1

declare dso_local i32 @cafe_frame_complete(%struct.cafe_camera*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
