; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_cmd.c_dpu_encoder_phys_cmd_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_cmd.c_dpu_encoder_phys_cmd_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_encoder_phys = type { i32 }
%struct.dpu_encoder_phys_cmd = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"invalid encoder\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_encoder_phys*)* @dpu_encoder_phys_cmd_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_encoder_phys_cmd_destroy(%struct.dpu_encoder_phys* %0) #0 {
  %2 = alloca %struct.dpu_encoder_phys*, align 8
  %3 = alloca %struct.dpu_encoder_phys_cmd*, align 8
  store %struct.dpu_encoder_phys* %0, %struct.dpu_encoder_phys** %2, align 8
  %4 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %5 = call %struct.dpu_encoder_phys_cmd* @to_dpu_encoder_phys_cmd(%struct.dpu_encoder_phys* %4)
  store %struct.dpu_encoder_phys_cmd* %5, %struct.dpu_encoder_phys_cmd** %3, align 8
  %6 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %7 = icmp ne %struct.dpu_encoder_phys* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %13

10:                                               ; preds = %1
  %11 = load %struct.dpu_encoder_phys_cmd*, %struct.dpu_encoder_phys_cmd** %3, align 8
  %12 = call i32 @kfree(%struct.dpu_encoder_phys_cmd* %11)
  br label %13

13:                                               ; preds = %10, %8
  ret void
}

declare dso_local %struct.dpu_encoder_phys_cmd* @to_dpu_encoder_phys_cmd(%struct.dpu_encoder_phys*) #1

declare dso_local i32 @DPU_ERROR(i8*) #1

declare dso_local i32 @kfree(%struct.dpu_encoder_phys_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
