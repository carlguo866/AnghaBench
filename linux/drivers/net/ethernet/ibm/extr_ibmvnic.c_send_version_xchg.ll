; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_send_version_xchg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_send_version_xchg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvnic_adapter = type { i32 }
%union.ibmvnic_crq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@IBMVNIC_CRQ_CMD = common dso_local global i32 0, align 4
@VERSION_EXCHANGE = common dso_local global i32 0, align 4
@ibmvnic_version = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmvnic_adapter*)* @send_version_xchg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_version_xchg(%struct.ibmvnic_adapter* %0) #0 {
  %2 = alloca %struct.ibmvnic_adapter*, align 8
  %3 = alloca %union.ibmvnic_crq, align 4
  store %struct.ibmvnic_adapter* %0, %struct.ibmvnic_adapter** %2, align 8
  %4 = call i32 @memset(%union.ibmvnic_crq* %3, i32 0, i32 12)
  %5 = load i32, i32* @IBMVNIC_CRQ_CMD, align 4
  %6 = bitcast %union.ibmvnic_crq* %3 to %struct.TYPE_2__*
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 2
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @VERSION_EXCHANGE, align 4
  %9 = bitcast %union.ibmvnic_crq* %3 to %struct.TYPE_2__*
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @ibmvnic_version, align 4
  %12 = call i32 @cpu_to_be16(i32 %11)
  %13 = bitcast %union.ibmvnic_crq* %3 to %struct.TYPE_2__*
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %16 = call i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter* %15, %union.ibmvnic_crq* %3)
  ret i32 %16
}

declare dso_local i32 @memset(%union.ibmvnic_crq*, i32, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter*, %union.ibmvnic_crq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
