; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_pci_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_pci_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pqi_sg_descriptor = type { i32, i32 }

@DMA_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.pqi_sg_descriptor*, i32, i32)* @pqi_pci_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqi_pci_unmap(%struct.pci_dev* %0, %struct.pqi_sg_descriptor* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.pqi_sg_descriptor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store %struct.pqi_sg_descriptor* %1, %struct.pqi_sg_descriptor** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @DMA_NONE, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  br label %40

14:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %37, %14
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %15
  %20 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = load %struct.pqi_sg_descriptor*, %struct.pqi_sg_descriptor** %6, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.pqi_sg_descriptor, %struct.pqi_sg_descriptor* %22, i64 %24
  %26 = getelementptr inbounds %struct.pqi_sg_descriptor, %struct.pqi_sg_descriptor* %25, i32 0, i32 1
  %27 = call i64 @get_unaligned_le64(i32* %26)
  %28 = trunc i64 %27 to i32
  %29 = load %struct.pqi_sg_descriptor*, %struct.pqi_sg_descriptor** %6, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.pqi_sg_descriptor, %struct.pqi_sg_descriptor* %29, i64 %31
  %33 = getelementptr inbounds %struct.pqi_sg_descriptor, %struct.pqi_sg_descriptor* %32, i32 0, i32 0
  %34 = call i32 @get_unaligned_le32(i32* %33)
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @dma_unmap_single(i32* %21, i32 %28, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %19
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  br label %15

40:                                               ; preds = %13, %15
  ret void
}

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i64 @get_unaligned_le64(i32*) #1

declare dso_local i32 @get_unaligned_le32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
