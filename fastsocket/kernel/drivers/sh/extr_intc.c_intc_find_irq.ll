; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/sh/extr_intc.c_intc_find_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/sh/extr_intc.c_intc_find_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intc_handle_int = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intc_handle_int* (%struct.intc_handle_int*, i32, i32)* @intc_find_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intc_handle_int* @intc_find_irq(%struct.intc_handle_int* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.intc_handle_int*, align 8
  %5 = alloca %struct.intc_handle_int*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intc_handle_int* %0, %struct.intc_handle_int** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %28, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %9
  %14 = load %struct.intc_handle_int*, %struct.intc_handle_int** %5, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.intc_handle_int, %struct.intc_handle_int* %14, i64 %16
  %18 = getelementptr inbounds %struct.intc_handle_int, %struct.intc_handle_int* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %28

23:                                               ; preds = %13
  %24 = load %struct.intc_handle_int*, %struct.intc_handle_int** %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.intc_handle_int, %struct.intc_handle_int* %24, i64 %26
  store %struct.intc_handle_int* %27, %struct.intc_handle_int** %4, align 8
  br label %32

28:                                               ; preds = %22
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  br label %9

31:                                               ; preds = %9
  store %struct.intc_handle_int* null, %struct.intc_handle_int** %4, align 8
  br label %32

32:                                               ; preds = %31, %23
  %33 = load %struct.intc_handle_int*, %struct.intc_handle_int** %4, align 8
  ret %struct.intc_handle_int* %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
