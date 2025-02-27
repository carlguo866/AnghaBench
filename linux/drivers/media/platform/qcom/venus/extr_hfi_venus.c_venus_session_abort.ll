; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_session_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_session_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_inst = type { i32 }
%struct.venus_hfi_device = type { i32 }

@HFI_CMD_SYS_SESSION_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venus_inst*)* @venus_session_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venus_session_abort(%struct.venus_inst* %0) #0 {
  %2 = alloca %struct.venus_inst*, align 8
  %3 = alloca %struct.venus_hfi_device*, align 8
  store %struct.venus_inst* %0, %struct.venus_inst** %2, align 8
  %4 = load %struct.venus_inst*, %struct.venus_inst** %2, align 8
  %5 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.venus_hfi_device* @to_hfi_priv(i32 %6)
  store %struct.venus_hfi_device* %7, %struct.venus_hfi_device** %3, align 8
  %8 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %3, align 8
  %9 = call i32 @venus_flush_debug_queue(%struct.venus_hfi_device* %8)
  %10 = load %struct.venus_inst*, %struct.venus_inst** %2, align 8
  %11 = load i32, i32* @HFI_CMD_SYS_SESSION_ABORT, align 4
  %12 = call i32 @venus_session_cmd(%struct.venus_inst* %10, i32 %11)
  ret i32 %12
}

declare dso_local %struct.venus_hfi_device* @to_hfi_priv(i32) #1

declare dso_local i32 @venus_flush_debug_queue(%struct.venus_hfi_device*) #1

declare dso_local i32 @venus_session_cmd(%struct.venus_inst*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
