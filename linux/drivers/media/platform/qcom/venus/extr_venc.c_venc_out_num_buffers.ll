; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_venc.c_venc_out_num_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_venc.c_venc_out_num_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_inst = type { i32 }
%struct.hfi_buffer_requirements = type { i32 }

@HFI_BUFFER_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venus_inst*, i32*)* @venc_out_num_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venc_out_num_buffers(%struct.venus_inst* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.venus_inst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.hfi_buffer_requirements, align 4
  %7 = alloca i32, align 4
  store %struct.venus_inst* %0, %struct.venus_inst** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %9 = call i32 @venc_init_session(%struct.venus_inst* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %3, align 4
  br label %24

14:                                               ; preds = %2
  %15 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %16 = load i32, i32* @HFI_BUFFER_INPUT, align 4
  %17 = call i32 @venus_helper_get_bufreq(%struct.venus_inst* %15, i32 %16, %struct.hfi_buffer_requirements* %6)
  store i32 %17, i32* %7, align 4
  %18 = getelementptr inbounds %struct.hfi_buffer_requirements, %struct.hfi_buffer_requirements* %6, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %5, align 8
  store i32 %19, i32* %20, align 4
  %21 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %22 = call i32 @hfi_session_deinit(%struct.venus_inst* %21)
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %14, %12
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @venc_init_session(%struct.venus_inst*) #1

declare dso_local i32 @venus_helper_get_bufreq(%struct.venus_inst*, i32, %struct.hfi_buffer_requirements*) #1

declare dso_local i32 @hfi_session_deinit(%struct.venus_inst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
