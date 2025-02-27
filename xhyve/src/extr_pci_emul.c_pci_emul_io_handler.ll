; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_emul.c_pci_emul_io_handler.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_emul.c_pci_emul_io_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinst = type { %struct.TYPE_2__*, %struct.pci_devemu* }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.pci_devemu = type { i32 (i32, %struct.pci_devinst*, i32, i64, i32, i64)*, i64 (i32, %struct.pci_devinst*, i32, i64, i32)* }

@PCI_BARMAX = common dso_local global i32 0, align 4
@PCIBAR_IO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i64*, i8*)* @pci_emul_io_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_emul_io_handler(i32 %0, i32 %1, i32 %2, i32 %3, i64* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.pci_devinst*, align 8
  %15 = alloca %struct.pci_devemu*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64* %4, i64** %12, align 8
  store i8* %5, i8** %13, align 8
  %18 = load i8*, i8** %13, align 8
  %19 = bitcast i8* %18 to %struct.pci_devinst*
  store %struct.pci_devinst* %19, %struct.pci_devinst** %14, align 8
  %20 = load %struct.pci_devinst*, %struct.pci_devinst** %14, align 8
  %21 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %20, i32 0, i32 1
  %22 = load %struct.pci_devemu*, %struct.pci_devemu** %21, align 8
  store %struct.pci_devemu* %22, %struct.pci_devemu** %15, align 8
  store i32 0, i32* %17, align 4
  br label %23

23:                                               ; preds = %112, %6
  %24 = load i32, i32* %17, align 4
  %25 = load i32, i32* @PCI_BARMAX, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %115

27:                                               ; preds = %23
  %28 = load %struct.pci_devinst*, %struct.pci_devinst** %14, align 8
  %29 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %17, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PCIBAR_IO, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %111

38:                                               ; preds = %27
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = load %struct.pci_devinst*, %struct.pci_devinst** %14, align 8
  %42 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %17, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp sge i64 %40, %48
  br i1 %49, label %50, label %111

50:                                               ; preds = %38
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = load %struct.pci_devinst*, %struct.pci_devinst** %14, align 8
  %56 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %17, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.pci_devinst*, %struct.pci_devinst** %14, align 8
  %64 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %17, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %62, %70
  %72 = icmp sle i64 %54, %71
  br i1 %72, label %73, label %111

73:                                               ; preds = %50
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = load %struct.pci_devinst*, %struct.pci_devinst** %14, align 8
  %77 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i32, i32* %17, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = sub nsw i64 %75, %83
  store i64 %84, i64* %16, align 8
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %73
  %88 = load %struct.pci_devemu*, %struct.pci_devemu** %15, align 8
  %89 = getelementptr inbounds %struct.pci_devemu, %struct.pci_devemu* %88, i32 0, i32 1
  %90 = load i64 (i32, %struct.pci_devinst*, i32, i64, i32)*, i64 (i32, %struct.pci_devinst*, i32, i64, i32)** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.pci_devinst*, %struct.pci_devinst** %14, align 8
  %93 = load i32, i32* %17, align 4
  %94 = load i64, i64* %16, align 8
  %95 = load i32, i32* %11, align 4
  %96 = call i64 %90(i32 %91, %struct.pci_devinst* %92, i32 %93, i64 %94, i32 %95)
  %97 = load i64*, i64** %12, align 8
  store i64 %96, i64* %97, align 8
  br label %110

98:                                               ; preds = %73
  %99 = load %struct.pci_devemu*, %struct.pci_devemu** %15, align 8
  %100 = getelementptr inbounds %struct.pci_devemu, %struct.pci_devemu* %99, i32 0, i32 0
  %101 = load i32 (i32, %struct.pci_devinst*, i32, i64, i32, i64)*, i32 (i32, %struct.pci_devinst*, i32, i64, i32, i64)** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = load %struct.pci_devinst*, %struct.pci_devinst** %14, align 8
  %104 = load i32, i32* %17, align 4
  %105 = load i64, i64* %16, align 8
  %106 = load i32, i32* %11, align 4
  %107 = load i64*, i64** %12, align 8
  %108 = load i64, i64* %107, align 8
  %109 = call i32 %101(i32 %102, %struct.pci_devinst* %103, i32 %104, i64 %105, i32 %106, i64 %108)
  br label %110

110:                                              ; preds = %98, %87
  store i32 0, i32* %7, align 4
  br label %116

111:                                              ; preds = %50, %38, %27
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %17, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %17, align 4
  br label %23

115:                                              ; preds = %23
  store i32 -1, i32* %7, align 4
  br label %116

116:                                              ; preds = %115, %110
  %117 = load i32, i32* %7, align 4
  ret i32 %117
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
