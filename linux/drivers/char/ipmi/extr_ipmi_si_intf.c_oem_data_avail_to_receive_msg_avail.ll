; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_oem_data_avail_to_receive_msg_avail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_oem_data_avail_to_receive_msg_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smi_info = type { i32 }

@OEM_DATA_AVAIL = common dso_local global i32 0, align 4
@RECEIVE_MSG_AVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smi_info*)* @oem_data_avail_to_receive_msg_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oem_data_avail_to_receive_msg_avail(%struct.smi_info* %0) #0 {
  %2 = alloca %struct.smi_info*, align 8
  store %struct.smi_info* %0, %struct.smi_info** %2, align 8
  %3 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %4 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @OEM_DATA_AVAIL, align 4
  %7 = xor i32 %6, -1
  %8 = and i32 %5, %7
  %9 = load i32, i32* @RECEIVE_MSG_AVAIL, align 4
  %10 = or i32 %8, %9
  %11 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %12 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  ret i32 1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
