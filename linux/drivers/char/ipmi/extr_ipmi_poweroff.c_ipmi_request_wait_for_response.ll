; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_poweroff.c_ipmi_request_wait_for_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_poweroff.c_ipmi_request_wait_for_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.ipmi_user = type { i32 }
%struct.ipmi_addr = type { i32 }
%struct.kernel_ipmi_msg = type { i32 }
%struct.completion = type { i32 }

@halt_smi_msg = common dso_local global i32 0, align 4
@halt_recv_msg = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipmi_user*, %struct.ipmi_addr*, %struct.kernel_ipmi_msg*)* @ipmi_request_wait_for_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipmi_request_wait_for_response(%struct.ipmi_user* %0, %struct.ipmi_addr* %1, %struct.kernel_ipmi_msg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipmi_user*, align 8
  %6 = alloca %struct.ipmi_addr*, align 8
  %7 = alloca %struct.kernel_ipmi_msg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.completion, align 4
  store %struct.ipmi_user* %0, %struct.ipmi_user** %5, align 8
  store %struct.ipmi_addr* %1, %struct.ipmi_addr** %6, align 8
  store %struct.kernel_ipmi_msg* %2, %struct.kernel_ipmi_msg** %7, align 8
  %10 = call i32 @init_completion(%struct.completion* %9)
  %11 = load %struct.ipmi_user*, %struct.ipmi_user** %5, align 8
  %12 = load %struct.ipmi_addr*, %struct.ipmi_addr** %6, align 8
  %13 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %7, align 8
  %14 = call i32 @ipmi_request_supply_msgs(%struct.ipmi_user* %11, %struct.ipmi_addr* %12, i32 0, %struct.kernel_ipmi_msg* %13, %struct.completion* %9, i32* @halt_smi_msg, %struct.TYPE_5__* @halt_recv_msg, i32 0)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %24

19:                                               ; preds = %3
  %20 = call i32 @wait_for_completion(%struct.completion* %9)
  %21 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @halt_recv_msg, i32 0, i32 0, i32 0), align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %19, %17
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @init_completion(%struct.completion*) #1

declare dso_local i32 @ipmi_request_supply_msgs(%struct.ipmi_user*, %struct.ipmi_addr*, i32, %struct.kernel_ipmi_msg*, %struct.completion*, i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @wait_for_completion(%struct.completion*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
