; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_unattached_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_unattached_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_port = type { i64, i64 }

@TYPEC_PORT_DRP = common dso_local global i64 0, align 8
@TYPEC_SOURCE = common dso_local global i64 0, align 8
@SRC_UNATTACHED = common dso_local global i32 0, align 4
@SNK_UNATTACHED = common dso_local global i32 0, align 4
@TYPEC_PORT_SRC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpm_port*)* @unattached_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unattached_state(%struct.tcpm_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tcpm_port*, align 8
  store %struct.tcpm_port* %0, %struct.tcpm_port** %3, align 8
  %4 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %5 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @TYPEC_PORT_DRP, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %11 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TYPEC_SOURCE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = load i32, i32* @SRC_UNATTACHED, align 4
  store i32 %16, i32* %2, align 4
  br label %30

17:                                               ; preds = %9
  %18 = load i32, i32* @SNK_UNATTACHED, align 4
  store i32 %18, i32* %2, align 4
  br label %30

19:                                               ; preds = %1
  %20 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %21 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @TYPEC_PORT_SRC, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @SRC_UNATTACHED, align 4
  store i32 %26, i32* %2, align 4
  br label %30

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* @SNK_UNATTACHED, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %28, %25, %17, %15
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
