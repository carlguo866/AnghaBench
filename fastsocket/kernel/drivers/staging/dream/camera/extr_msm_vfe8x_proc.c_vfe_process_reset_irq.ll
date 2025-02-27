; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_process_reset_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_process_reset_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@VFE_STATE_IDLE = common dso_local global i32 0, align 4
@ctrl = common dso_local global %struct.TYPE_2__* null, align 8
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@VFE_MSG_ID_STOP_ACK = common dso_local global i32 0, align 4
@VFE_MSG_ID_RESET_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @vfe_process_reset_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_process_reset_irq() #0 {
  %1 = load i32, i32* @VFE_STATE_IDLE, align 4
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 1
  store i32 %1, i32* %3, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @TRUE, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %0
  %10 = load i64, i64* @FALSE, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = load i32, i32* @VFE_MSG_ID_STOP_ACK, align 4
  %14 = call i32 @vfe_send_msg_no_payload(i32 %13)
  br label %19

15:                                               ; preds = %0
  %16 = call i32 (...) @vfe_set_default_reg_values()
  %17 = load i32, i32* @VFE_MSG_ID_RESET_ACK, align 4
  %18 = call i32 @vfe_send_msg_no_payload(i32 %17)
  br label %19

19:                                               ; preds = %15, %9
  ret void
}

declare dso_local i32 @vfe_send_msg_no_payload(i32) #1

declare dso_local i32 @vfe_set_default_reg_values(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
