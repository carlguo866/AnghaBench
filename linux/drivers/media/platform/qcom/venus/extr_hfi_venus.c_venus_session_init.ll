; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_session_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_session_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_inst = type { i32 }
%struct.venus_hfi_device = type { i32 }
%struct.hfi_session_init_pkt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venus_inst*, i32, i32)* @venus_session_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venus_session_init(%struct.venus_inst* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.venus_inst*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.venus_hfi_device*, align 8
  %9 = alloca %struct.hfi_session_init_pkt, align 4
  %10 = alloca i32, align 4
  store %struct.venus_inst* %0, %struct.venus_inst** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %12 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.venus_hfi_device* @to_hfi_priv(i32 %13)
  store %struct.venus_hfi_device* %14, %struct.venus_hfi_device** %8, align 8
  %15 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @pkt_session_init(%struct.hfi_session_init_pkt* %9, %struct.venus_inst* %15, i32 %16, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %29

22:                                               ; preds = %3
  %23 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %8, align 8
  %24 = call i32 @venus_iface_cmdq_write(%struct.venus_hfi_device* %23, %struct.hfi_session_init_pkt* %9)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %29

28:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %33

29:                                               ; preds = %27, %21
  %30 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %8, align 8
  %31 = call i32 @venus_flush_debug_queue(%struct.venus_hfi_device* %30)
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %29, %28
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.venus_hfi_device* @to_hfi_priv(i32) #1

declare dso_local i32 @pkt_session_init(%struct.hfi_session_init_pkt*, %struct.venus_inst*, i32, i32) #1

declare dso_local i32 @venus_iface_cmdq_write(%struct.venus_hfi_device*, %struct.hfi_session_init_pkt*) #1

declare dso_local i32 @venus_flush_debug_queue(%struct.venus_hfi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
