; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_send_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_send_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_cm_node = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.i40iw_sc_vsi }
%struct.i40iw_sc_vsi = type { i32 }
%struct.i40iw_puda_buf = type { i32 }

@SET_ACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"no sqbuf\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_cm_node*)* @i40iw_send_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_send_ack(%struct.i40iw_cm_node* %0) #0 {
  %2 = alloca %struct.i40iw_cm_node*, align 8
  %3 = alloca %struct.i40iw_puda_buf*, align 8
  %4 = alloca %struct.i40iw_sc_vsi*, align 8
  store %struct.i40iw_cm_node* %0, %struct.i40iw_cm_node** %2, align 8
  %5 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %6 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.i40iw_sc_vsi* %8, %struct.i40iw_sc_vsi** %4, align 8
  %9 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %10 = load i32, i32* @SET_ACK, align 4
  %11 = call %struct.i40iw_puda_buf* @i40iw_form_cm_frame(%struct.i40iw_cm_node* %9, i32* null, i32* null, i32* null, i32 %10)
  store %struct.i40iw_puda_buf* %11, %struct.i40iw_puda_buf** %3, align 8
  %12 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %3, align 8
  %13 = icmp ne %struct.i40iw_puda_buf* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.i40iw_sc_vsi*, %struct.i40iw_sc_vsi** %4, align 8
  %16 = getelementptr inbounds %struct.i40iw_sc_vsi, %struct.i40iw_sc_vsi* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %3, align 8
  %19 = call i32 @i40iw_puda_send_buf(i32 %17, %struct.i40iw_puda_buf* %18)
  br label %22

20:                                               ; preds = %1
  %21 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %14
  ret void
}

declare dso_local %struct.i40iw_puda_buf* @i40iw_form_cm_frame(%struct.i40iw_cm_node*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @i40iw_puda_send_buf(i32, %struct.i40iw_puda_buf*) #1

declare dso_local i32 @i40iw_pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
