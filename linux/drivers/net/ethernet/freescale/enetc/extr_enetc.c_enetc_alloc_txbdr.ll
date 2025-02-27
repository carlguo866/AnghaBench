; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_alloc_txbdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_alloc_txbdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enetc_bdr = type { i32, i64, i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.enetc_bdr*)* @enetc_alloc_txbdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enetc_alloc_txbdr(%struct.enetc_bdr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.enetc_bdr*, align 8
  %4 = alloca i32, align 4
  store %struct.enetc_bdr* %0, %struct.enetc_bdr** %3, align 8
  %5 = load %struct.enetc_bdr*, %struct.enetc_bdr** %3, align 8
  %6 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 4
  %10 = trunc i64 %9 to i32
  %11 = call i32 @vzalloc(i32 %10)
  %12 = load %struct.enetc_bdr*, %struct.enetc_bdr** %3, align 8
  %13 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 8
  %14 = load %struct.enetc_bdr*, %struct.enetc_bdr** %3, align 8
  %15 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %37

21:                                               ; preds = %1
  %22 = load %struct.enetc_bdr*, %struct.enetc_bdr** %3, align 8
  %23 = call i32 @enetc_dma_alloc_bdr(%struct.enetc_bdr* %22, i32 4)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.enetc_bdr*, %struct.enetc_bdr** %3, align 8
  %28 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @vfree(i32 %29)
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %37

32:                                               ; preds = %21
  %33 = load %struct.enetc_bdr*, %struct.enetc_bdr** %3, align 8
  %34 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %33, i32 0, i32 2
  store i64 0, i64* %34, align 8
  %35 = load %struct.enetc_bdr*, %struct.enetc_bdr** %3, align 8
  %36 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %32, %26, %18
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @vzalloc(i32) #1

declare dso_local i32 @enetc_dma_alloc_bdr(%struct.enetc_bdr*, i32) #1

declare dso_local i32 @vfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
