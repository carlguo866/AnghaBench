; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_rx_refill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_rx_refill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i32 }
%struct.mvpp2_bm_pool = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvpp2_port*, %struct.mvpp2_bm_pool*, i32)* @mvpp2_rx_refill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_rx_refill(%struct.mvpp2_port* %0, %struct.mvpp2_bm_pool* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mvpp2_port*, align 8
  %6 = alloca %struct.mvpp2_bm_pool*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %5, align 8
  store %struct.mvpp2_bm_pool* %1, %struct.mvpp2_bm_pool** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %12 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %6, align 8
  %13 = load i32, i32* @GFP_ATOMIC, align 4
  %14 = call i8* @mvpp2_buf_alloc(%struct.mvpp2_port* %11, %struct.mvpp2_bm_pool* %12, i32* %8, i32* %9, i32 %13)
  store i8* %14, i8** %10, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %26

20:                                               ; preds = %3
  %21 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @mvpp2_bm_pool_put(%struct.mvpp2_port* %21, i32 %22, i32 %23, i32 %24)
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %20, %17
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i8* @mvpp2_buf_alloc(%struct.mvpp2_port*, %struct.mvpp2_bm_pool*, i32*, i32*, i32) #1

declare dso_local i32 @mvpp2_bm_pool_put(%struct.mvpp2_port*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
