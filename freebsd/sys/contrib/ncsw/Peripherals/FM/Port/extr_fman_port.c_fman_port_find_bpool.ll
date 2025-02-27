; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fman_port.c_fman_port_find_bpool.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fman_port.c_fman_port_find_bpool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_port = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@FMAN_PORT_MAX_EXT_POOLS_NUM = common dso_local global i64 0, align 8
@BMI_EXT_BUF_POOL_ID_MASK = common dso_local global i32 0, align 4
@BMI_EXT_BUF_POOL_ID_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.fman_port*, i64)* @fman_port_find_bpool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fman_port_find_bpool(%struct.fman_port* %0, i64 %1) #0 {
  %3 = alloca %struct.fman_port*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.fman_port* %0, %struct.fman_port** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.fman_port*, %struct.fman_port** %3, align 8
  %10 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %5, align 8
  store i64 0, i64* %7, align 8
  br label %15

15:                                               ; preds = %43, %2
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.fman_port*, %struct.fman_port** %3, align 8
  %18 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @FMAN_PORT_MAX_EXT_POOLS_NUM, align 8
  %24 = icmp ult i64 %22, %23
  br label %25

25:                                               ; preds = %21, %15
  %26 = phi i1 [ false, %15 ], [ %24, %21 ]
  br i1 %26, label %27, label %46

27:                                               ; preds = %25
  %28 = load i32*, i32** %5, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = call i32 @ioread32be(i32* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @BMI_EXT_BUF_POOL_ID_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @BMI_EXT_BUF_POOL_ID_SHIFT, align 4
  %36 = ashr i32 %34, %35
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %4, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %27
  br label %46

42:                                               ; preds = %27
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %7, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %7, align 8
  br label %15

46:                                               ; preds = %41, %25
  %47 = load i64, i64* %7, align 8
  ret i64 %47
}

declare dso_local i32 @ioread32be(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
