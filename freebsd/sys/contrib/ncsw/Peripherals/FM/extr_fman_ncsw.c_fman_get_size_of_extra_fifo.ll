; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fman_ncsw.c_fman_get_size_of_extra_fifo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fman_ncsw.c_fman_get_size_of_extra_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_bmi_regs = type { i32* }

@BMI_EXTRA_FIFO_SIZE_MASK = common dso_local global i32 0, align 4
@BMI_EXTRA_FIFO_SIZE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fman_get_size_of_extra_fifo(%struct.fman_bmi_regs* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fman_bmi_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fman_bmi_regs* %0, %struct.fman_bmi_regs** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp sgt i32 %7, 63
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %2
  store i32 0, i32* %3, align 4
  br label %27

13:                                               ; preds = %9
  %14 = load %struct.fman_bmi_regs*, %struct.fman_bmi_regs** %4, align 8
  %15 = getelementptr inbounds %struct.fman_bmi_regs, %struct.fman_bmi_regs* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = call i32 @ioread32be(i32* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @BMI_EXTRA_FIFO_SIZE_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @BMI_EXTRA_FIFO_SIZE_SHIFT, align 4
  %26 = ashr i32 %24, %25
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %13, %12
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @ioread32be(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
