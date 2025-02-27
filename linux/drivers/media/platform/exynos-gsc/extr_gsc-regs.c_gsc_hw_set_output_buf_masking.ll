; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-regs.c_gsc_hw_set_output_buf_masking.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-regs.c_gsc_hw_set_output_buf_masking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_dev = type { i64 }

@GSC_OUT_BASE_ADDR_Y_MASK = common dso_local global i64 0, align 8
@GSC_OUT_BASE_ADDR_CB_MASK = common dso_local global i64 0, align 8
@GSC_OUT_BASE_ADDR_CR_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gsc_hw_set_output_buf_masking(%struct.gsc_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gsc_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gsc_dev* %0, %struct.gsc_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %10 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @GSC_OUT_BASE_ADDR_Y_MASK, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl(i64 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = shl i32 1, %15
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = shl i32 %21, %22
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %28 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @GSC_OUT_BASE_ADDR_Y_MASK, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 %26, i64 %31)
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %35 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @GSC_OUT_BASE_ADDR_CB_MASK, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i32 %33, i64 %38)
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %42 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @GSC_OUT_BASE_ADDR_CR_MASK, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i32 %40, i64 %45)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
