; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_msghandler.c_send_channel_info_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_msghandler.c_send_channel_info_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.kernel_ipmi_msg = type { i8*, i32, i32, i32 }
%struct.ipmi_system_interface_addr = type { i64, i32, i32 }
%struct.ipmi_addr = type { i32 }

@IPMI_SYSTEM_INTERFACE_ADDR_TYPE = common dso_local global i32 0, align 4
@IPMI_BMC_CHANNEL = common dso_local global i32 0, align 4
@IPMI_NETFN_APP_REQUEST = common dso_local global i32 0, align 4
@IPMI_GET_CHANNEL_INFO_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @send_channel_info_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_channel_info_cmd(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kernel_ipmi_msg, align 8
  %6 = alloca [1 x i8], align 1
  %7 = alloca %struct.ipmi_system_interface_addr, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @IPMI_SYSTEM_INTERFACE_ADDR_TYPE, align 4
  %9 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %7, i32 0, i32 2
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* @IPMI_BMC_CHANNEL, align 4
  %11 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %7, i32 0, i32 1
  store i32 %10, i32* %11, align 8
  %12 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %7, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* @IPMI_NETFN_APP_REQUEST, align 4
  %14 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %5, i32 0, i32 3
  store i32 %13, i32* %14, align 8
  %15 = load i32, i32* @IPMI_GET_CHANNEL_INFO_CMD, align 4
  %16 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %5, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds [1 x i8], [1 x i8]* %6, i64 0, i64 0
  %18 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %5, i32 0, i32 0
  store i8* %17, i8** %18, align 8
  %19 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %5, i32 0, i32 1
  store i32 1, i32* %19, align 8
  %20 = load i32, i32* %4, align 4
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds [1 x i8], [1 x i8]* %6, i64 0, i64 0
  store i8 %21, i8* %22, align 1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = bitcast %struct.ipmi_system_interface_addr* %7 to %struct.ipmi_addr*
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @i_ipmi_request(i32* null, %struct.TYPE_7__* %23, %struct.ipmi_addr* %24, i32 0, %struct.kernel_ipmi_msg* %5, %struct.TYPE_7__* %25, i32* null, i32* null, i32 0, i32 %31, i32 %37, i32 -1, i32 0)
  ret i32 %38
}

declare dso_local i32 @i_ipmi_request(i32*, %struct.TYPE_7__*, %struct.ipmi_addr*, i32, %struct.kernel_ipmi_msg*, %struct.TYPE_7__*, i32*, i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
