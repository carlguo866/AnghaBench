; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_hwtstamp.c_mv88e6xxx_port_ptp_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_hwtstamp.c_mv88e6xxx_port_ptp_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { {}* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv88e6xxx_chip*, i32, i32, i32*, i32)* @mv88e6xxx_port_ptp_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6xxx_port_ptp_read(%struct.mv88e6xxx_chip* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mv88e6xxx_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %7, align 8
  %13 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = bitcast {}** %19 to i32 (%struct.mv88e6xxx_chip*, i32, i32, i32*, i32)**
  %21 = load i32 (%struct.mv88e6xxx_chip*, i32, i32, i32*, i32)*, i32 (%struct.mv88e6xxx_chip*, i32, i32, i32*, i32)** %20, align 8
  %22 = icmp ne i32 (%struct.mv88e6xxx_chip*, i32, i32, i32*, i32)* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %43

26:                                               ; preds = %5
  %27 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %7, align 8
  %28 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = bitcast {}** %34 to i32 (%struct.mv88e6xxx_chip*, i32, i32, i32*, i32)**
  %36 = load i32 (%struct.mv88e6xxx_chip*, i32, i32, i32*, i32)*, i32 (%struct.mv88e6xxx_chip*, i32, i32, i32*, i32)** %35, align 8
  %37 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 %36(%struct.mv88e6xxx_chip* %37, i32 %38, i32 %39, i32* %40, i32 %41)
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %26, %23
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
