; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion_page_pool.c_ion_page_pool_total.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion_page_pool.c_ion_page_pool_total.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ion_page_pool = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ion_page_pool*, i32)* @ion_page_pool_total to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ion_page_pool_total(%struct.ion_page_pool* %0, i32 %1) #0 {
  %3 = alloca %struct.ion_page_pool*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ion_page_pool* %0, %struct.ion_page_pool** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ion_page_pool*, %struct.ion_page_pool** %3, align 8
  %7 = getelementptr inbounds %struct.ion_page_pool, %struct.ion_page_pool* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load %struct.ion_page_pool*, %struct.ion_page_pool** %3, align 8
  %13 = getelementptr inbounds %struct.ion_page_pool, %struct.ion_page_pool* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %16, %14
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %11, %2
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.ion_page_pool*, %struct.ion_page_pool** %3, align 8
  %22 = getelementptr inbounds %struct.ion_page_pool, %struct.ion_page_pool* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %20, %23
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
