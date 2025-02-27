; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_rxe_query_pkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_rxe_query_pkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.rxe_dev = type { %struct.rxe_port }
%struct.rxe_port = type { i64*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"invalid index = %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, i64, i64*)* @rxe_query_pkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxe_query_pkey(%struct.ib_device* %0, i32 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.rxe_dev*, align 8
  %11 = alloca %struct.rxe_port*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %13 = call %struct.rxe_dev* @to_rdev(%struct.ib_device* %12)
  store %struct.rxe_dev* %13, %struct.rxe_dev** %10, align 8
  %14 = load %struct.rxe_dev*, %struct.rxe_dev** %10, align 8
  %15 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %14, i32 0, i32 0
  store %struct.rxe_port* %15, %struct.rxe_port** %11, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load %struct.rxe_port*, %struct.rxe_port** %11, align 8
  %18 = getelementptr inbounds %struct.rxe_port, %struct.rxe_port* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp uge i64 %16, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %4
  %26 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %27 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @dev_warn(i32 %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %30)
  br label %40

32:                                               ; preds = %4
  %33 = load %struct.rxe_port*, %struct.rxe_port** %11, align 8
  %34 = getelementptr inbounds %struct.rxe_port, %struct.rxe_port* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load i64*, i64** %9, align 8
  store i64 %38, i64* %39, align 8
  store i32 0, i32* %5, align 4
  br label %43

40:                                               ; preds = %25
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %40, %32
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local %struct.rxe_dev* @to_rdev(%struct.ib_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
