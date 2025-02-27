; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_mfp-pxa2xx.c_pxa2xx_mfp_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_mfp-pxa2xx.c_pxa2xx_mfp_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@gpio_desc = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pxa2xx_mfp_config(i64* %0, i32 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %9 = load i64*, i64** %3, align 8
  store i64* %9, i64** %6, align 8
  br label %10

10:                                               ; preds = %38, %2
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %43

14:                                               ; preds = %10
  %15 = load i64*, i64** %6, align 8
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @MFP_PIN(i64 %16)
  %18 = call i32 @__mfp_validate(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %38

22:                                               ; preds = %14
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @local_irq_save(i64 %23)
  %25 = load i64*, i64** %6, align 8
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gpio_desc, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i64 %26, i64* %31, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i64*, i64** %6, align 8
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @__mfp_config_gpio(i32 %32, i64 %34)
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @local_irq_restore(i64 %36)
  br label %38

38:                                               ; preds = %22, %21
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  %41 = load i64*, i64** %6, align 8
  %42 = getelementptr inbounds i64, i64* %41, i32 1
  store i64* %42, i64** %6, align 8
  br label %10

43:                                               ; preds = %10
  ret void
}

declare dso_local i32 @__mfp_validate(i32) #1

declare dso_local i32 @MFP_PIN(i64) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @__mfp_config_gpio(i32, i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
