; ModuleID = '/home/carl/AnghaBench/linux/drivers/sh/intc/extr_access.c_intc_get_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sh/intc/extr_access.c_intc_get_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intc_desc_int = type { i32, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intc_get_reg(%struct.intc_desc_int* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intc_desc_int*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.intc_desc_int* %0, %struct.intc_desc_int** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.intc_desc_int*, %struct.intc_desc_int** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i64 @intc_phys_to_virt(%struct.intc_desc_int* %7, i64 %8)
  store i64 %9, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %29, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.intc_desc_int*, %struct.intc_desc_int** %4, align 8
  %13 = getelementptr inbounds %struct.intc_desc_int, %struct.intc_desc_int* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %10
  %17 = load %struct.intc_desc_int*, %struct.intc_desc_int** %4, align 8
  %18 = getelementptr inbounds %struct.intc_desc_int, %struct.intc_desc_int* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %34

28:                                               ; preds = %16
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %6, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %10

32:                                               ; preds = %10
  %33 = call i32 (...) @BUG()
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %26
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @intc_phys_to_virt(%struct.intc_desc_int*, i64) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
