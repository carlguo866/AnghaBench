; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_eth_com.c_ena_com_rx_cdesc_idx_to_ptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_eth_com.c_ena_com_rx_cdesc_idx_to_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_eth_io_rx_cdesc_base = type { i32 }
%struct.ena_com_io_cq = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ena_eth_io_rx_cdesc_base* (%struct.ena_com_io_cq*, i32)* @ena_com_rx_cdesc_idx_to_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ena_eth_io_rx_cdesc_base* @ena_com_rx_cdesc_idx_to_ptr(%struct.ena_com_io_cq* %0, i32 %1) #0 {
  %3 = alloca %struct.ena_com_io_cq*, align 8
  %4 = alloca i32, align 4
  store %struct.ena_com_io_cq* %0, %struct.ena_com_io_cq** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %3, align 8
  %6 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = sub nsw i32 %7, 1
  %9 = load i32, i32* %4, align 4
  %10 = and i32 %9, %8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %3, align 8
  %12 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %3, align 8
  %17 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %15, %18
  %20 = sext i32 %19 to i64
  %21 = add i64 %14, %20
  %22 = inttoptr i64 %21 to %struct.ena_eth_io_rx_cdesc_base*
  ret %struct.ena_eth_io_rx_cdesc_base* %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
