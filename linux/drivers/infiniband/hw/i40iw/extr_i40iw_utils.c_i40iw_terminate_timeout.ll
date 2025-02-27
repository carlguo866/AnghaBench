; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_utils.c_i40iw_terminate_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_utils.c_i40iw_terminate_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_qp = type { i32, i32 }
%struct.timer_list = type { i32 }
%struct.i40iw_sc_qp = type { i32 }

@terminate_timer = common dso_local global i32 0, align 4
@iwqp = common dso_local global %struct.i40iw_qp* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @i40iw_terminate_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_terminate_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.i40iw_qp*, align 8
  %4 = alloca %struct.i40iw_sc_qp*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.i40iw_qp*, %struct.i40iw_qp** %3, align 8
  %6 = ptrtoint %struct.i40iw_qp* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @terminate_timer, align 4
  %9 = call %struct.i40iw_qp* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.i40iw_qp* %9, %struct.i40iw_qp** %3, align 8
  %10 = load %struct.i40iw_qp*, %struct.i40iw_qp** %3, align 8
  %11 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %10, i32 0, i32 1
  %12 = bitcast i32* %11 to %struct.i40iw_sc_qp*
  store %struct.i40iw_sc_qp* %12, %struct.i40iw_sc_qp** %4, align 8
  %13 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %4, align 8
  %14 = call i32 @i40iw_terminate_done(%struct.i40iw_sc_qp* %13, i32 1)
  %15 = load %struct.i40iw_qp*, %struct.i40iw_qp** %3, align 8
  %16 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %15, i32 0, i32 0
  %17 = call i32 @i40iw_rem_ref(i32* %16)
  ret void
}

declare dso_local %struct.i40iw_qp* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @i40iw_terminate_done(%struct.i40iw_sc_qp*, i32) #1

declare dso_local i32 @i40iw_rem_ref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
