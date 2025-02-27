; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_iw_get_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_iw_get_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_device = type { i32 }
%struct.qlnxr_dev = type { i32, i32* }

@.str = private unnamed_addr constant [36 x i8] c"enter dev = %p ibdev = %p qpn = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"exit qp = %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_qp* @qlnxr_iw_get_qp(%struct.ib_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlnxr_dev*, align 8
  %6 = alloca %struct.ib_qp*, align 8
  %7 = alloca i32*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %9 = call %struct.qlnxr_dev* @get_qlnxr_dev(%struct.ib_device* %8)
  store %struct.qlnxr_dev* %9, %struct.qlnxr_dev** %5, align 8
  %10 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %11 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %15 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 (i32*, i8*, %struct.qlnxr_dev*, ...) @QL_DPRINT12(i32* %13, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.qlnxr_dev* %14, %struct.ib_device* %15, i32 %16)
  %18 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %19 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %4, align 4
  %21 = call %struct.ib_qp* @idr_find(i32* %19, i32 %20)
  store %struct.ib_qp* %21, %struct.ib_qp** %6, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %24 = bitcast %struct.ib_qp* %23 to %struct.qlnxr_dev*
  %25 = call i32 (i32*, i8*, %struct.qlnxr_dev*, ...) @QL_DPRINT12(i32* %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct.qlnxr_dev* %24)
  %26 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  ret %struct.ib_qp* %26
}

declare dso_local %struct.qlnxr_dev* @get_qlnxr_dev(%struct.ib_device*) #1

declare dso_local i32 @QL_DPRINT12(i32*, i8*, %struct.qlnxr_dev*, ...) #1

declare dso_local %struct.ib_qp* @idr_find(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
