; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_vdec.c_vdec_buf_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_vdec.c_vdec_buf_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32 }
%struct.venus_inst = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_buffer*)* @vdec_buf_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdec_buf_cleanup(%struct.vb2_buffer* %0) #0 {
  %2 = alloca %struct.vb2_buffer*, align 8
  %3 = alloca %struct.venus_inst*, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %2, align 8
  %4 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %5 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.venus_inst* @vb2_get_drv_priv(i32 %6)
  store %struct.venus_inst* %7, %struct.venus_inst** %3, align 8
  %8 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %9 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %9, align 4
  %12 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %13 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %18 = call i32 @vdec_session_release(%struct.venus_inst* %17)
  br label %19

19:                                               ; preds = %16, %1
  ret void
}

declare dso_local %struct.venus_inst* @vb2_get_drv_priv(i32) #1

declare dso_local i32 @vdec_session_release(%struct.venus_inst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
