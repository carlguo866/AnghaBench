; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/android/extr_ashmem.c_page_in_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/android/extr_ashmem.c_page_in_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ashmem_range = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ashmem_range*, i64)* @page_in_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @page_in_range(%struct.ashmem_range* %0, i64 %1) #0 {
  %3 = alloca %struct.ashmem_range*, align 8
  %4 = alloca i64, align 8
  store %struct.ashmem_range* %0, %struct.ashmem_range** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.ashmem_range*, %struct.ashmem_range** %3, align 8
  %6 = getelementptr inbounds %struct.ashmem_range, %struct.ashmem_range* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp ule i64 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.ashmem_range*, %struct.ashmem_range** %3, align 8
  %12 = getelementptr inbounds %struct.ashmem_range, %struct.ashmem_range* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp uge i64 %13, %14
  br label %16

16:                                               ; preds = %10, %2
  %17 = phi i1 [ false, %2 ], [ %15, %10 ]
  %18 = zext i1 %17 to i32
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
