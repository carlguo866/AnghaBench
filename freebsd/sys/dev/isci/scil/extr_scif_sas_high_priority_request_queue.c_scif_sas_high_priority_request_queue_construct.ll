; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_high_priority_request_queue.c_scif_sas_high_priority_request_queue_construct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_high_priority_request_queue.c_scif_sas_high_priority_request_queue_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@SCIF_LOG_OBJECT_CONTROLLER = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_DOMAIN_DISCOVERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"scif_sas_high_priority_request_queue_construct(0x%x,0x%x) enter\0A\00", align 1
@SCI_LOCK_LEVEL_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scif_sas_high_priority_request_queue_construct(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* @SCIF_LOG_OBJECT_CONTROLLER, align 4
  %7 = load i32, i32* @SCIF_LOG_OBJECT_DOMAIN_DISCOVERY, align 4
  %8 = or i32 %6, %7
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @SCIF_LOG_TRACE(i32* %10)
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = bitcast %struct.TYPE_4__* %13 to i32*
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @sci_base_object_construct(i32* %14, i32* %15)
  %17 = load i32, i32* @SCI_LOCK_LEVEL_NONE, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @sci_pool_initialize(i32 %23)
  ret void
}

declare dso_local i32 @SCIF_LOG_TRACE(i32*) #1

declare dso_local i32 @sci_base_object_construct(i32*, i32*) #1

declare dso_local i32 @sci_pool_initialize(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
