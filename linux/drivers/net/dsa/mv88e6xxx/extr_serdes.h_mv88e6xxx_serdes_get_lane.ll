; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_serdes.h_mv88e6xxx_serdes_get_lane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_serdes.h_mv88e6xxx_serdes_get_lane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv88e6xxx_chip*, i32)* @mv88e6xxx_serdes_get_lane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6xxx_serdes_get_lane(%struct.mv88e6xxx_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mv88e6xxx_chip*, align 8
  %5 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %7 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = bitcast {}** %11 to i32 (%struct.mv88e6xxx_chip*, i32)**
  %13 = load i32 (%struct.mv88e6xxx_chip*, i32)*, i32 (%struct.mv88e6xxx_chip*, i32)** %12, align 8
  %14 = icmp ne i32 (%struct.mv88e6xxx_chip*, i32)* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %28

16:                                               ; preds = %2
  %17 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %18 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = bitcast {}** %22 to i32 (%struct.mv88e6xxx_chip*, i32)**
  %24 = load i32 (%struct.mv88e6xxx_chip*, i32)*, i32 (%struct.mv88e6xxx_chip*, i32)** %23, align 8
  %25 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 %24(%struct.mv88e6xxx_chip* %25, i32 %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %16, %15
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
