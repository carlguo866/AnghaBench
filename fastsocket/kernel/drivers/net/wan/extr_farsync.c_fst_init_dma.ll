; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_farsync.c_fst_init_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_farsync.c_fst_init_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fst_card_info = type { i64, i64, i32 }

@FST_FAMILY_TXU = common dso_local global i64 0, align 8
@DMAMODE0 = common dso_local global i64 0, align 8
@DMAMODE1 = common dso_local global i64 0, align 8
@DMATHR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fst_card_info*)* @fst_init_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fst_init_dma(%struct.fst_card_info* %0) #0 {
  %2 = alloca %struct.fst_card_info*, align 8
  store %struct.fst_card_info* %0, %struct.fst_card_info** %2, align 8
  %3 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %4 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @FST_FAMILY_TXU, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %31

8:                                                ; preds = %1
  %9 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %10 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @pci_set_master(i32 %11)
  %13 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %14 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DMAMODE0, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @outl(i32 132161, i64 %17)
  %19 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %20 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DMAMODE1, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @outl(i32 132161, i64 %23)
  %25 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %26 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DMATHR, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @outl(i32 0, i64 %29)
  br label %31

31:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @pci_set_master(i32) #1

declare dso_local i32 @outl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
