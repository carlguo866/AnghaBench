; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_domain.c_scif_sas_domain_initialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_domain.c_scif_sas_domain_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@SCIF_LOG_OBJECT_DOMAIN = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_INITIALIZATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"scif_sas_domain_initialize(0x%x) enter\0A\00", align 1
@scif_sas_domain_operation_timeout_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scif_sas_domain_initialize(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %3 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %4 = call i32 @sci_base_object_get_logger(%struct.TYPE_7__* %3)
  %5 = load i32, i32* @SCIF_LOG_OBJECT_DOMAIN, align 4
  %6 = load i32, i32* @SCIF_LOG_OBJECT_INITIALIZATION, align 4
  %7 = or i32 %5, %6
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %9 = ptrtoint %struct.TYPE_7__* %8 to i32
  %10 = call i32 @SCIF_LOG_TRACE(i32 %9)
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @scif_sas_domain_operation_timeout_handler, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %22 = call i64 @scif_cb_timer_create(i32 %19, i32 %20, %struct.TYPE_7__* %21)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i64 %22, i64* %25, align 8
  br label %26

26:                                               ; preds = %16, %1
  ret void
}

declare dso_local i32 @SCIF_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_7__*) #1

declare dso_local i64 @scif_cb_timer_create(i32, i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
