; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap1/extr_clock.c_clk_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap1/extr_clock.c_clk_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@clockfw_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clk_set_rate(%struct.clk* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load %struct.clk*, %struct.clk** %4, align 8
  %11 = icmp eq %struct.clk* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load %struct.clk*, %struct.clk** %4, align 8
  %14 = call i64 @IS_ERR(%struct.clk* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12, %2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %33

18:                                               ; preds = %12
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @spin_lock_irqsave(i32* @clockfw_lock, i64 %19)
  %21 = load %struct.clk*, %struct.clk** %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @omap1_clk_set_rate(%struct.clk* %21, i64 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load %struct.clk*, %struct.clk** %4, align 8
  %28 = call i32 @propagate_rate(%struct.clk* %27)
  br label %29

29:                                               ; preds = %26, %18
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* @clockfw_lock, i64 %30)
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %29, %16
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @omap1_clk_set_rate(%struct.clk*, i64) #1

declare dso_local i32 @propagate_rate(%struct.clk*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
