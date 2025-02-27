; ModuleID = '/home/carl/AnghaBench/linux/drivers/sh/intc/extr_balancing.c_intc_set_dist_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sh/intc/extr_balancing.c_intc_set_dist_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intc_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.intc_desc_int = type { i32 }

@intc_big_lock = common dso_local global i32 0, align 4
@dist_handle = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intc_set_dist_handle(i32 %0, %struct.intc_desc* %1, %struct.intc_desc_int* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intc_desc*, align 8
  %7 = alloca %struct.intc_desc_int*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.intc_desc* %1, %struct.intc_desc** %6, align 8
  store %struct.intc_desc_int* %2, %struct.intc_desc_int** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.intc_desc*, %struct.intc_desc** %6, align 8
  %11 = getelementptr inbounds %struct.intc_desc, %struct.intc_desc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  br label %29

16:                                               ; preds = %4
  %17 = load i64, i64* %9, align 8
  %18 = call i32 @raw_spin_lock_irqsave(i32* @intc_big_lock, i64 %17)
  %19 = load %struct.intc_desc*, %struct.intc_desc** %6, align 8
  %20 = load %struct.intc_desc_int*, %struct.intc_desc_int** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @intc_dist_data(%struct.intc_desc* %19, %struct.intc_desc_int* %20, i32 %21)
  %23 = load i32*, i32** @dist_handle, align 8
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32 %22, i32* %26, align 4
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @raw_spin_unlock_irqrestore(i32* @intc_big_lock, i64 %27)
  br label %29

29:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @intc_dist_data(%struct.intc_desc*, %struct.intc_desc_int*, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
