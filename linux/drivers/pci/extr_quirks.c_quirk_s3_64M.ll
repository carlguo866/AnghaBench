; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_quirk_s3_64M.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_quirk_s3_64M.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.resource* }
%struct.resource = type { i32, i32, i32 }

@IORESOURCE_UNSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @quirk_s3_64M to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quirk_s3_64M(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.resource*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 0
  %6 = load %struct.resource*, %struct.resource** %5, align 8
  %7 = getelementptr inbounds %struct.resource, %struct.resource* %6, i64 0
  store %struct.resource* %7, %struct.resource** %3, align 8
  %8 = load %struct.resource*, %struct.resource** %3, align 8
  %9 = getelementptr inbounds %struct.resource, %struct.resource* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, 67108863
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %1
  %14 = load %struct.resource*, %struct.resource** %3, align 8
  %15 = getelementptr inbounds %struct.resource, %struct.resource* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.resource*, %struct.resource** %3, align 8
  %18 = getelementptr inbounds %struct.resource, %struct.resource* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 67108863
  %21 = icmp ne i32 %16, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %13, %1
  %23 = load i32, i32* @IORESOURCE_UNSET, align 4
  %24 = load %struct.resource*, %struct.resource** %3, align 8
  %25 = getelementptr inbounds %struct.resource, %struct.resource* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.resource*, %struct.resource** %3, align 8
  %29 = getelementptr inbounds %struct.resource, %struct.resource* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  %30 = load %struct.resource*, %struct.resource** %3, align 8
  %31 = getelementptr inbounds %struct.resource, %struct.resource* %30, i32 0, i32 1
  store i32 67108863, i32* %31, align 4
  br label %32

32:                                               ; preds = %22, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
