; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-uniphier.c_uniphier_gpio_irq_domain_translate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-uniphier.c_uniphier_gpio_irq_domain_translate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }
%struct.irq_fwspec = type { i32, i64* }

@EINVAL = common dso_local global i32 0, align 4
@IRQ_TYPE_SENSE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* @uniphier_gpio_irq_domain_translate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_gpio_irq_domain_translate(%struct.irq_domain* %0, %struct.irq_fwspec* %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca %struct.irq_fwspec*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store %struct.irq_fwspec* %1, %struct.irq_fwspec** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %11 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %12, 2
  %14 = zext i1 %13 to i32
  %15 = call i64 @WARN_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %37

20:                                               ; preds = %4
  %21 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %22 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %21, i32 0, i32 1
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64*, i64** %8, align 8
  store i64 %25, i64* %26, align 8
  %27 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %28 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 1
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %33 = zext i32 %32 to i64
  %34 = and i64 %31, %33
  %35 = trunc i64 %34 to i32
  %36 = load i32*, i32** %9, align 8
  store i32 %35, i32* %36, align 4
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %20, %17
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
