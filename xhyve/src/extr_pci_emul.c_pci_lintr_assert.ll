; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_emul.c_pci_lintr_assert.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_emul.c_pci_lintr_assert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinst = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32 }

@IDLE = common dso_local global i64 0, align 8
@ASSERTED = common dso_local global i64 0, align 8
@PENDING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_lintr_assert(%struct.pci_devinst* %0) #0 {
  %2 = alloca %struct.pci_devinst*, align 8
  store %struct.pci_devinst* %0, %struct.pci_devinst** %2, align 8
  %3 = load %struct.pci_devinst*, %struct.pci_devinst** %2, align 8
  %4 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp sgt i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.pci_devinst*, %struct.pci_devinst** %2, align 8
  %11 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = call i32 @pthread_mutex_lock(i32* %12)
  %14 = load %struct.pci_devinst*, %struct.pci_devinst** %2, align 8
  %15 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IDLE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %1
  %21 = load %struct.pci_devinst*, %struct.pci_devinst** %2, align 8
  %22 = call i64 @pci_lintr_permitted(%struct.pci_devinst* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load i64, i64* @ASSERTED, align 8
  %26 = load %struct.pci_devinst*, %struct.pci_devinst** %2, align 8
  %27 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i64 %25, i64* %28, align 8
  %29 = load %struct.pci_devinst*, %struct.pci_devinst** %2, align 8
  %30 = call i32 @pci_irq_assert(%struct.pci_devinst* %29)
  br label %36

31:                                               ; preds = %20
  %32 = load i64, i64* @PENDING, align 8
  %33 = load %struct.pci_devinst*, %struct.pci_devinst** %2, align 8
  %34 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i64 %32, i64* %35, align 8
  br label %36

36:                                               ; preds = %31, %24
  br label %37

37:                                               ; preds = %36, %1
  %38 = load %struct.pci_devinst*, %struct.pci_devinst** %2, align 8
  %39 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = call i32 @pthread_mutex_unlock(i32* %40)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @pci_lintr_permitted(%struct.pci_devinst*) #1

declare dso_local i32 @pci_irq_assert(%struct.pci_devinst*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
