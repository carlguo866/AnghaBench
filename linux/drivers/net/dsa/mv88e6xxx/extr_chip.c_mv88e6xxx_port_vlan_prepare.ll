; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_port_vlan_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_port_vlan_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.mv88e6xxx_chip* }
%struct.mv88e6xxx_chip = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.switchdev_obj_port_vlan = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*, i32, %struct.switchdev_obj_port_vlan*)* @mv88e6xxx_port_vlan_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6xxx_port_vlan_prepare(%struct.dsa_switch* %0, i32 %1, %struct.switchdev_obj_port_vlan* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dsa_switch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.switchdev_obj_port_vlan*, align 8
  %8 = alloca %struct.mv88e6xxx_chip*, align 8
  %9 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.switchdev_obj_port_vlan* %2, %struct.switchdev_obj_port_vlan** %7, align 8
  %10 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %11 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %10, i32 0, i32 0
  %12 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %11, align 8
  store %struct.mv88e6xxx_chip* %12, %struct.mv88e6xxx_chip** %8, align 8
  %13 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %14 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %37

22:                                               ; preds = %3
  %23 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %24 = call i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip* %23)
  %25 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %7, align 8
  %28 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %7, align 8
  %31 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @mv88e6xxx_port_check_hw_vlan(%struct.dsa_switch* %25, i32 %26, i32 %29, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %35 = call i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip* %34)
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %22, %19
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_port_check_hw_vlan(%struct.dsa_switch*, i32, i32, i32) #1

declare dso_local i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
