; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_nic.c_efx_may_push_tx_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_nic.c_efx_may_push_tx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_tx_queue = type { i32, i32 }

@EFX_EMPTY_COUNT_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_tx_queue*, i32)* @efx_may_push_tx_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_may_push_tx_desc(%struct.efx_tx_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efx_tx_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.efx_tx_queue* %0, %struct.efx_tx_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %8 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @ACCESS_ONCE(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

14:                                               ; preds = %2
  %15 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %16 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %15, i32 0, i32 1
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = xor i32 %17, %18
  %20 = load i32, i32* @EFX_EMPTY_COUNT_VALID, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %14
  %25 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %26 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = sub i32 %27, %28
  %30 = icmp eq i32 %29, 1
  br label %31

31:                                               ; preds = %24, %14
  %32 = phi i1 [ false, %14 ], [ %30, %24 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %31, %13
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @ACCESS_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
