; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_swim3.c_init_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_swim3.c_init_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dbdma_cmd = type { i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dbdma_cmd*, i32, i8*, i32)* @init_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_dma(%struct.dbdma_cmd* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.dbdma_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.dbdma_cmd* %0, %struct.dbdma_cmd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.dbdma_cmd*, %struct.dbdma_cmd** %5, align 8
  %10 = getelementptr inbounds %struct.dbdma_cmd, %struct.dbdma_cmd* %9, i32 0, i32 3
  %11 = load i32, i32* %8, align 4
  %12 = call i32 @st_le16(i32* %10, i32 %11)
  %13 = load %struct.dbdma_cmd*, %struct.dbdma_cmd** %5, align 8
  %14 = getelementptr inbounds %struct.dbdma_cmd, %struct.dbdma_cmd* %13, i32 0, i32 2
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @st_le16(i32* %14, i32 %15)
  %17 = load %struct.dbdma_cmd*, %struct.dbdma_cmd** %5, align 8
  %18 = getelementptr inbounds %struct.dbdma_cmd, %struct.dbdma_cmd* %17, i32 0, i32 1
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @virt_to_bus(i8* %19)
  %21 = call i32 @st_le32(i32* %18, i32 %20)
  %22 = load %struct.dbdma_cmd*, %struct.dbdma_cmd** %5, align 8
  %23 = getelementptr inbounds %struct.dbdma_cmd, %struct.dbdma_cmd* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  ret void
}

declare dso_local i32 @st_le16(i32*, i32) #1

declare dso_local i32 @st_le32(i32*, i32) #1

declare dso_local i32 @virt_to_bus(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
