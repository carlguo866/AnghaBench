; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_controller_terminate_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_controller_terminate_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32*, i32*, i32*)* }

@SCIC_LOG_OBJECT_CONTROLLER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"scic_controller_terminate_request(0x%x, 0x%x, 0x%x) enter\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scic_controller_terminate_request(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %4, align 8
  %10 = inttoptr i64 %9 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %8, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @sci_base_object_get_logger(i64 %11)
  %13 = load i32, i32* @SCIC_LOG_OBJECT_CONTROLLER, align 4
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i32 @SCIC_LOG_TRACE(i32 %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32 (i32*, i32*, i32*)*, i32 (i32*, i32*, i32*)** %22, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %5, align 8
  %27 = inttoptr i64 %26 to i32*
  %28 = load i64, i64* %6, align 8
  %29 = inttoptr i64 %28 to i32*
  %30 = call i32 %23(i32* %25, i32* %27, i32* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  ret i32 %31
}

declare dso_local i32 @SCIC_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
