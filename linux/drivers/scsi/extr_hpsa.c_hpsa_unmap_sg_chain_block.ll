; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_unmap_sg_chain_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_unmap_sg_chain_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.CommandList = type { %struct.SGDescriptor*, %struct.TYPE_3__ }
%struct.SGDescriptor = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctlr_info*, %struct.CommandList*)* @hpsa_unmap_sg_chain_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpsa_unmap_sg_chain_block(%struct.ctlr_info* %0, %struct.CommandList* %1) #0 {
  %3 = alloca %struct.ctlr_info*, align 8
  %4 = alloca %struct.CommandList*, align 8
  %5 = alloca %struct.SGDescriptor*, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %3, align 8
  store %struct.CommandList* %1, %struct.CommandList** %4, align 8
  %6 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %7 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @le16_to_cpu(i32 %9)
  %11 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %12 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sle i32 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %40

16:                                               ; preds = %2
  %17 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %18 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %17, i32 0, i32 0
  %19 = load %struct.SGDescriptor*, %struct.SGDescriptor** %18, align 8
  %20 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %21 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.SGDescriptor, %struct.SGDescriptor* %19, i64 %24
  store %struct.SGDescriptor* %25, %struct.SGDescriptor** %5, align 8
  %26 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %27 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.SGDescriptor*, %struct.SGDescriptor** %5, align 8
  %31 = getelementptr inbounds %struct.SGDescriptor, %struct.SGDescriptor* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le64_to_cpu(i32 %32)
  %34 = load %struct.SGDescriptor*, %struct.SGDescriptor** %5, align 8
  %35 = getelementptr inbounds %struct.SGDescriptor, %struct.SGDescriptor* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le32_to_cpu(i32 %36)
  %38 = load i32, i32* @DMA_TO_DEVICE, align 4
  %39 = call i32 @dma_unmap_single(i32* %29, i32 %33, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
