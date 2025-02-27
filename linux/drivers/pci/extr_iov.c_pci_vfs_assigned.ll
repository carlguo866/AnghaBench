; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_iov.c_pci_vfs_assigned.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_iov.c_pci_vfs_assigned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.pci_dev*, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i16 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_vfs_assigned(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %53

12:                                               ; preds = %1
  %13 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i16, i16* %16, align 2
  store i16 %17, i16* %6, align 2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i16, i16* %6, align 2
  %22 = call %struct.pci_dev* @pci_get_device(i32 %20, i16 zeroext %21, %struct.pci_dev* null)
  store %struct.pci_dev* %22, %struct.pci_dev** %4, align 8
  br label %23

23:                                               ; preds = %44, %12
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = icmp ne %struct.pci_dev* %24, null
  br i1 %25, label %26, label %51

26:                                               ; preds = %23
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %26
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 1
  %34 = load %struct.pci_dev*, %struct.pci_dev** %33, align 8
  %35 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %36 = icmp eq %struct.pci_dev* %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = call i64 @pci_is_dev_assigned(%struct.pci_dev* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* %5, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %41, %37, %31, %26
  %45 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %46 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i16, i16* %6, align 2
  %49 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %50 = call %struct.pci_dev* @pci_get_device(i32 %47, i16 zeroext %48, %struct.pci_dev* %49)
  store %struct.pci_dev* %50, %struct.pci_dev** %4, align 8
  br label %23

51:                                               ; preds = %23
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %11
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.pci_dev* @pci_get_device(i32, i16 zeroext, %struct.pci_dev*) #1

declare dso_local i64 @pci_is_dev_assigned(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
