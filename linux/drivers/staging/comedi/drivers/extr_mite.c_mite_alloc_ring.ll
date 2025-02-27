; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_mite.c_mite_alloc_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_mite.c_mite_alloc_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mite_ring = type { i64, i32*, i64, i32 }
%struct.mite = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mite_ring* @mite_alloc_ring(%struct.mite* %0) #0 {
  %2 = alloca %struct.mite_ring*, align 8
  %3 = alloca %struct.mite*, align 8
  %4 = alloca %struct.mite_ring*, align 8
  store %struct.mite* %0, %struct.mite** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.mite_ring* @kmalloc(i32 32, i32 %5)
  store %struct.mite_ring* %6, %struct.mite_ring** %4, align 8
  %7 = load %struct.mite_ring*, %struct.mite_ring** %4, align 8
  %8 = icmp ne %struct.mite_ring* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.mite_ring* null, %struct.mite_ring** %2, align 8
  br label %33

10:                                               ; preds = %1
  %11 = load %struct.mite*, %struct.mite** %3, align 8
  %12 = getelementptr inbounds %struct.mite, %struct.mite* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @get_device(i32* %14)
  %16 = load %struct.mite_ring*, %struct.mite_ring** %4, align 8
  %17 = getelementptr inbounds %struct.mite_ring, %struct.mite_ring* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = load %struct.mite_ring*, %struct.mite_ring** %4, align 8
  %19 = getelementptr inbounds %struct.mite_ring, %struct.mite_ring* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %10
  %23 = load %struct.mite_ring*, %struct.mite_ring** %4, align 8
  %24 = call i32 @kfree(%struct.mite_ring* %23)
  store %struct.mite_ring* null, %struct.mite_ring** %2, align 8
  br label %33

25:                                               ; preds = %10
  %26 = load %struct.mite_ring*, %struct.mite_ring** %4, align 8
  %27 = getelementptr inbounds %struct.mite_ring, %struct.mite_ring* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load %struct.mite_ring*, %struct.mite_ring** %4, align 8
  %29 = getelementptr inbounds %struct.mite_ring, %struct.mite_ring* %28, i32 0, i32 1
  store i32* null, i32** %29, align 8
  %30 = load %struct.mite_ring*, %struct.mite_ring** %4, align 8
  %31 = getelementptr inbounds %struct.mite_ring, %struct.mite_ring* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load %struct.mite_ring*, %struct.mite_ring** %4, align 8
  store %struct.mite_ring* %32, %struct.mite_ring** %2, align 8
  br label %33

33:                                               ; preds = %25, %22, %9
  %34 = load %struct.mite_ring*, %struct.mite_ring** %2, align 8
  ret %struct.mite_ring* %34
}

declare dso_local %struct.mite_ring* @kmalloc(i32, i32) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @kfree(%struct.mite_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
