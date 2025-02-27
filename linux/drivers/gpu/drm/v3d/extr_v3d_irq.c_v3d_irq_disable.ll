; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_irq.c_v3d_irq_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_irq.c_v3d_irq_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v3d_dev = type { i32, i32 }

@V3D_CTL_INT_MSK_SET = common dso_local global i32 0, align 4
@V3D_HUB_INT_MSK_SET = common dso_local global i32 0, align 4
@V3D_CTL_INT_CLR = common dso_local global i32 0, align 4
@V3D_CORE_IRQS = common dso_local global i32 0, align 4
@V3D_HUB_INT_CLR = common dso_local global i32 0, align 4
@V3D_HUB_IRQS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v3d_irq_disable(%struct.v3d_dev* %0) #0 {
  %2 = alloca %struct.v3d_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.v3d_dev* %0, %struct.v3d_dev** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %14, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.v3d_dev*, %struct.v3d_dev** %2, align 8
  %7 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @V3D_CTL_INT_MSK_SET, align 4
  %13 = call i32 @V3D_CORE_WRITE(i32 %11, i32 %12, i32 -1)
  br label %14

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %3, align 4
  br label %4

17:                                               ; preds = %4
  %18 = load i32, i32* @V3D_HUB_INT_MSK_SET, align 4
  %19 = call i32 @V3D_WRITE(i32 %18, i32 -1)
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %31, %17
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.v3d_dev*, %struct.v3d_dev** %2, align 8
  %23 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @V3D_CTL_INT_CLR, align 4
  %29 = load i32, i32* @V3D_CORE_IRQS, align 4
  %30 = call i32 @V3D_CORE_WRITE(i32 %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %20

34:                                               ; preds = %20
  %35 = load i32, i32* @V3D_HUB_INT_CLR, align 4
  %36 = load i32, i32* @V3D_HUB_IRQS, align 4
  %37 = call i32 @V3D_WRITE(i32 %35, i32 %36)
  %38 = load %struct.v3d_dev*, %struct.v3d_dev** %2, align 8
  %39 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %38, i32 0, i32 1
  %40 = call i32 @cancel_work_sync(i32* %39)
  ret void
}

declare dso_local i32 @V3D_CORE_WRITE(i32, i32, i32) #1

declare dso_local i32 @V3D_WRITE(i32, i32) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
