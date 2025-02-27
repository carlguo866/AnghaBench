; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_av.c_mthca_destroy_ah.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_av.c_mthca_destroy_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.mthca_ah = type { i32, i32, i32 }

@MTHCA_AV_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_destroy_ah(%struct.mthca_dev* %0, %struct.mthca_ah* %1) #0 {
  %3 = alloca %struct.mthca_dev*, align 8
  %4 = alloca %struct.mthca_ah*, align 8
  store %struct.mthca_dev* %0, %struct.mthca_dev** %3, align 8
  store %struct.mthca_ah* %1, %struct.mthca_ah** %4, align 8
  %5 = load %struct.mthca_ah*, %struct.mthca_ah** %4, align 8
  %6 = getelementptr inbounds %struct.mthca_ah, %struct.mthca_ah* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %40 [
    i32 129, label %8
    i32 128, label %23
    i32 130, label %35
  ]

8:                                                ; preds = %2
  %9 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %10 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = load %struct.mthca_ah*, %struct.mthca_ah** %4, align 8
  %13 = getelementptr inbounds %struct.mthca_ah, %struct.mthca_ah* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %16 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %14, %18
  %20 = load i32, i32* @MTHCA_AV_SIZE, align 4
  %21 = sdiv i32 %19, %20
  %22 = call i32 @mthca_free(i32* %11, i32 %21)
  br label %40

23:                                               ; preds = %2
  %24 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %25 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mthca_ah*, %struct.mthca_ah** %4, align 8
  %29 = getelementptr inbounds %struct.mthca_ah, %struct.mthca_ah* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mthca_ah*, %struct.mthca_ah** %4, align 8
  %32 = getelementptr inbounds %struct.mthca_ah, %struct.mthca_ah* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pci_pool_free(i32 %27, i32 %30, i32 %33)
  br label %40

35:                                               ; preds = %2
  %36 = load %struct.mthca_ah*, %struct.mthca_ah** %4, align 8
  %37 = getelementptr inbounds %struct.mthca_ah, %struct.mthca_ah* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @kfree(i32 %38)
  br label %40

40:                                               ; preds = %2, %35, %23, %8
  ret i32 0
}

declare dso_local i32 @mthca_free(i32*, i32) #1

declare dso_local i32 @pci_pool_free(i32, i32, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
