; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_trans_xen.c_xen_9pfs_front_remove.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_trans_xen.c_xen_9pfs_front_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32 }
%struct.xen_9pfs_front_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenbus_device*)* @xen_9pfs_front_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_9pfs_front_remove(%struct.xenbus_device* %0) #0 {
  %2 = alloca %struct.xenbus_device*, align 8
  %3 = alloca %struct.xen_9pfs_front_priv*, align 8
  store %struct.xenbus_device* %0, %struct.xenbus_device** %2, align 8
  %4 = load %struct.xenbus_device*, %struct.xenbus_device** %2, align 8
  %5 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %4, i32 0, i32 0
  %6 = call %struct.xen_9pfs_front_priv* @dev_get_drvdata(i32* %5)
  store %struct.xen_9pfs_front_priv* %6, %struct.xen_9pfs_front_priv** %3, align 8
  %7 = load %struct.xenbus_device*, %struct.xenbus_device** %2, align 8
  %8 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %7, i32 0, i32 0
  %9 = call i32 @dev_set_drvdata(i32* %8, i32* null)
  %10 = load %struct.xen_9pfs_front_priv*, %struct.xen_9pfs_front_priv** %3, align 8
  %11 = call i32 @xen_9pfs_front_free(%struct.xen_9pfs_front_priv* %10)
  ret i32 0
}

declare dso_local %struct.xen_9pfs_front_priv* @dev_get_drvdata(i32*) #1

declare dso_local i32 @dev_set_drvdata(i32*, i32*) #1

declare dso_local i32 @xen_9pfs_front_free(%struct.xen_9pfs_front_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
