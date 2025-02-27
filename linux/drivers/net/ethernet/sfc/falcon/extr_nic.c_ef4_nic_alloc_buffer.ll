; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_nic.c_ef4_nic_alloc_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_nic.c_ef4_nic_alloc_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ef4_buffer = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ef4_nic_alloc_buffer(%struct.ef4_nic* %0, %struct.ef4_buffer* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ef4_nic*, align 8
  %7 = alloca %struct.ef4_buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %6, align 8
  store %struct.ef4_buffer* %1, %struct.ef4_buffer** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.ef4_nic*, %struct.ef4_nic** %6, align 8
  %11 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.ef4_buffer*, %struct.ef4_buffer** %7, align 8
  %16 = getelementptr inbounds %struct.ef4_buffer, %struct.ef4_buffer* %15, i32 0, i32 2
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @dma_alloc_coherent(i32* %13, i32 %14, i32* %16, i32 %17)
  %19 = load %struct.ef4_buffer*, %struct.ef4_buffer** %7, align 8
  %20 = getelementptr inbounds %struct.ef4_buffer, %struct.ef4_buffer* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.ef4_buffer*, %struct.ef4_buffer** %7, align 8
  %22 = getelementptr inbounds %struct.ef4_buffer, %struct.ef4_buffer* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %32

28:                                               ; preds = %4
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.ef4_buffer*, %struct.ef4_buffer** %7, align 8
  %31 = getelementptr inbounds %struct.ef4_buffer, %struct.ef4_buffer* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %28, %25
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
