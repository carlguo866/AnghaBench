; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_resource.c_acpi_dev_get_irq_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_resource.c_acpi_dev_get_irq_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACPI_EDGE_SENSITIVE = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_LOW = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_HIGH = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_BOTH = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_dev_get_irq_type(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %34 [
    i32 128, label %7
    i32 129, label %17
    i32 130, label %27
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @ACPI_EDGE_SENSITIVE, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  br label %15

13:                                               ; preds = %7
  %14 = load i32, i32* @IRQ_TYPE_LEVEL_LOW, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  store i32 %16, i32* %3, align 4
  br label %36

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @ACPI_EDGE_SENSITIVE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  br label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  store i32 %26, i32* %3, align 4
  br label %36

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @ACPI_EDGE_SENSITIVE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @IRQ_TYPE_EDGE_BOTH, align 4
  store i32 %32, i32* %3, align 4
  br label %36

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %2, %33
  %35 = load i32, i32* @IRQ_TYPE_NONE, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %31, %25, %15
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
