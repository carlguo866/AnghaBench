; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_unsolicited_frame_control.c_scic_sds_unsolicited_frame_control_get_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_unsolicited_frame_control.c_scic_sds_unsolicited_frame_control_get_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i64 }

@SCI_SUCCESS = common dso_local global i32 0, align 4
@SCI_FAILURE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scic_sds_unsolicited_frame_control_get_buffer(%struct.TYPE_9__* %0, i64 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8** %2, i8*** %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %8, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %3
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load i8**, i8*** %7, align 8
  store i8* %22, i8** %23, align 8
  %24 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %24, i32* %4, align 4
  br label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @SCI_FAILURE_INVALID_PARAMETER_VALUE, align 4
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %25, %14
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
