; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_swdev_port_obj_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_swdev_port_obj_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.switchdev_obj = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.switchdev_obj*)* @swdev_port_obj_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swdev_port_obj_del(%struct.net_device* %0, %struct.switchdev_obj* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.switchdev_obj*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.switchdev_obj* %1, %struct.switchdev_obj** %4, align 8
  %6 = load %struct.switchdev_obj*, %struct.switchdev_obj** %4, align 8
  %7 = getelementptr inbounds %struct.switchdev_obj, %struct.switchdev_obj* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %19 [
    i32 128, label %9
    i32 129, label %14
  ]

9:                                                ; preds = %2
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = load %struct.switchdev_obj*, %struct.switchdev_obj** %4, align 8
  %12 = call i32 @SWITCHDEV_OBJ_PORT_VLAN(%struct.switchdev_obj* %11)
  %13 = call i32 @port_vlans_del(%struct.net_device* %10, i32 %12)
  store i32 %13, i32* %5, align 4
  br label %22

14:                                               ; preds = %2
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = load %struct.switchdev_obj*, %struct.switchdev_obj** %4, align 8
  %17 = call i32 @SWITCHDEV_OBJ_PORT_MDB(%struct.switchdev_obj* %16)
  %18 = call i32 @port_mdb_del(%struct.net_device* %15, i32 %17)
  store i32 %18, i32* %5, align 4
  br label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %19, %14, %9
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

declare dso_local i32 @port_vlans_del(%struct.net_device*, i32) #1

declare dso_local i32 @SWITCHDEV_OBJ_PORT_VLAN(%struct.switchdev_obj*) #1

declare dso_local i32 @port_mdb_del(%struct.net_device*, i32) #1

declare dso_local i32 @SWITCHDEV_OBJ_PORT_MDB(%struct.switchdev_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
