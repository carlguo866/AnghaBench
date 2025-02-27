; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global1.c_mv88e6095_g1_set_egress_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global1.c_mv88e6095_g1_set_egress_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32 }

@MV88E6185_G1_MONITOR_CTL = common dso_local global i32 0, align 4
@MV88E6185_G1_MONITOR_CTL_INGRESS_DEST_MASK = common dso_local global i32 0, align 4
@MV88E6185_G1_MONITOR_CTL_EGRESS_DEST_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv88e6095_g1_set_egress_port(%struct.mv88e6xxx_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mv88e6xxx_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %9 = load i32, i32* @MV88E6185_G1_MONITOR_CTL, align 4
  %10 = call i32 @mv88e6xxx_g1_read(%struct.mv88e6xxx_chip* %8, i32 %9, i32* %6)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %37

15:                                               ; preds = %2
  %16 = load i32, i32* @MV88E6185_G1_MONITOR_CTL_INGRESS_DEST_MASK, align 4
  %17 = load i32, i32* @MV88E6185_G1_MONITOR_CTL_EGRESS_DEST_MASK, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @MV88E6185_G1_MONITOR_CTL_INGRESS_DEST_MASK, align 4
  %24 = call i32 @__bf_shf(i32 %23)
  %25 = shl i32 %22, %24
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @MV88E6185_G1_MONITOR_CTL_EGRESS_DEST_MASK, align 4
  %28 = call i32 @__bf_shf(i32 %27)
  %29 = shl i32 %26, %28
  %30 = or i32 %25, %29
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %34 = load i32, i32* @MV88E6185_G1_MONITOR_CTL, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @mv88e6xxx_g1_write(%struct.mv88e6xxx_chip* %33, i32 %34, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %15, %13
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @mv88e6xxx_g1_read(%struct.mv88e6xxx_chip*, i32, i32*) #1

declare dso_local i32 @__bf_shf(i32) #1

declare dso_local i32 @mv88e6xxx_g1_write(%struct.mv88e6xxx_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
