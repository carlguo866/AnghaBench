; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmveth.c_ibmveth_rxq_get_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmveth.c_ibmveth_rxq_get_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ibmveth_adapter = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, %struct.sk_buff** }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@IBMVETH_NUM_BUFF_POOLS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ibmveth_adapter*)* @ibmveth_rxq_get_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ibmveth_rxq_get_buffer(%struct.ibmveth_adapter* %0) #0 {
  %2 = alloca %struct.ibmveth_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ibmveth_adapter* %0, %struct.ibmveth_adapter** %2, align 8
  %6 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = ashr i32 %17, 32
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = and i64 %20, 4294967295
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @IBMVETH_NUM_BUFF_POOLS, align 4
  %25 = icmp uge i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %30 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp uge i32 %28, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %41 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load %struct.sk_buff**, %struct.sk_buff*** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %47, i64 %49
  %51 = load %struct.sk_buff*, %struct.sk_buff** %50, align 8
  ret %struct.sk_buff* %51
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
