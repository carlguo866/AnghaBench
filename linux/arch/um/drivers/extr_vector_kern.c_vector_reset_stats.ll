; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_kern.c_vector_reset_stats.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_kern.c_vector_reset_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vector_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vector_private*)* @vector_reset_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vector_reset_stats(%struct.vector_private* %0) #0 {
  %2 = alloca %struct.vector_private*, align 8
  store %struct.vector_private* %0, %struct.vector_private** %2, align 8
  %3 = load %struct.vector_private*, %struct.vector_private** %2, align 8
  %4 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 11
  store i64 0, i64* %5, align 8
  %6 = load %struct.vector_private*, %struct.vector_private** %2, align 8
  %7 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 10
  store i64 0, i64* %8, align 8
  %9 = load %struct.vector_private*, %struct.vector_private** %2, align 8
  %10 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 9
  store i64 0, i64* %11, align 8
  %12 = load %struct.vector_private*, %struct.vector_private** %2, align 8
  %13 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 8
  store i64 0, i64* %14, align 8
  %15 = load %struct.vector_private*, %struct.vector_private** %2, align 8
  %16 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 7
  store i64 0, i64* %17, align 8
  %18 = load %struct.vector_private*, %struct.vector_private** %2, align 8
  %19 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 6
  store i64 0, i64* %20, align 8
  %21 = load %struct.vector_private*, %struct.vector_private** %2, align 8
  %22 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 5
  store i64 0, i64* %23, align 8
  %24 = load %struct.vector_private*, %struct.vector_private** %2, align 8
  %25 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 4
  store i64 0, i64* %26, align 8
  %27 = load %struct.vector_private*, %struct.vector_private** %2, align 8
  %28 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  store i64 0, i64* %29, align 8
  %30 = load %struct.vector_private*, %struct.vector_private** %2, align 8
  %31 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.vector_private*, %struct.vector_private** %2, align 8
  %34 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.vector_private*, %struct.vector_private** %2, align 8
  %37 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
