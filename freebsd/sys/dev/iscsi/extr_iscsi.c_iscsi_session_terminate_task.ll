; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_session_terminate_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_session_terminate_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_session = type { i32 }
%struct.iscsi_outstanding = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@CAM_SIM_QUEUED = common dso_local global i32 0, align 4
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_DEV_QFRZN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"freezing devq\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_session*, %struct.iscsi_outstanding*, i32)* @iscsi_session_terminate_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_session_terminate_task(%struct.iscsi_session* %0, %struct.iscsi_outstanding* %1, i32 %2) #0 {
  %4 = alloca %struct.iscsi_session*, align 8
  %5 = alloca %struct.iscsi_outstanding*, align 8
  %6 = alloca i32, align 4
  store %struct.iscsi_session* %0, %struct.iscsi_session** %4, align 8
  store %struct.iscsi_outstanding* %1, %struct.iscsi_outstanding** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %8 = call i32 @ISCSI_SESSION_LOCK_ASSERT(%struct.iscsi_session* %7)
  %9 = load %struct.iscsi_outstanding*, %struct.iscsi_outstanding** %5, align 8
  %10 = getelementptr inbounds %struct.iscsi_outstanding, %struct.iscsi_outstanding* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %65

13:                                               ; preds = %3
  %14 = load i32, i32* @CAM_SIM_QUEUED, align 4
  %15 = load i32, i32* @CAM_STATUS_MASK, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load %struct.iscsi_outstanding*, %struct.iscsi_outstanding** %5, align 8
  %19 = getelementptr inbounds %struct.iscsi_outstanding, %struct.iscsi_outstanding* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %17
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.iscsi_outstanding*, %struct.iscsi_outstanding** %5, align 8
  %27 = getelementptr inbounds %struct.iscsi_outstanding, %struct.iscsi_outstanding* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %25
  store i32 %32, i32* %30, align 4
  %33 = load %struct.iscsi_outstanding*, %struct.iscsi_outstanding** %5, align 8
  %34 = getelementptr inbounds %struct.iscsi_outstanding, %struct.iscsi_outstanding* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %13
  %43 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %44 = load %struct.iscsi_outstanding*, %struct.iscsi_outstanding** %5, align 8
  %45 = getelementptr inbounds %struct.iscsi_outstanding, %struct.iscsi_outstanding* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %43
  store i32 %50, i32* %48, align 4
  %51 = load %struct.iscsi_outstanding*, %struct.iscsi_outstanding** %5, align 8
  %52 = getelementptr inbounds %struct.iscsi_outstanding, %struct.iscsi_outstanding* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @xpt_freeze_devq(i32 %56, i32 1)
  %58 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %59 = call i32 @ISCSI_SESSION_DEBUG(%struct.iscsi_session* %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %42, %13
  %61 = load %struct.iscsi_outstanding*, %struct.iscsi_outstanding** %5, align 8
  %62 = getelementptr inbounds %struct.iscsi_outstanding, %struct.iscsi_outstanding* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = call i32 @xpt_done(%struct.TYPE_4__* %63)
  br label %65

65:                                               ; preds = %60, %3
  %66 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %67 = load %struct.iscsi_outstanding*, %struct.iscsi_outstanding** %5, align 8
  %68 = call i32 @iscsi_outstanding_remove(%struct.iscsi_session* %66, %struct.iscsi_outstanding* %67)
  ret void
}

declare dso_local i32 @ISCSI_SESSION_LOCK_ASSERT(%struct.iscsi_session*) #1

declare dso_local i32 @xpt_freeze_devq(i32, i32) #1

declare dso_local i32 @ISCSI_SESSION_DEBUG(%struct.iscsi_session*, i8*) #1

declare dso_local i32 @xpt_done(%struct.TYPE_4__*) #1

declare dso_local i32 @iscsi_outstanding_remove(%struct.iscsi_session*, %struct.iscsi_outstanding*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
