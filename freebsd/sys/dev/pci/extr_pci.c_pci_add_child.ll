; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_add_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_add_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinfo = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@pci_clear_aer_on_attach = common dso_local global i64 0, align 8
@pci_add_device = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_add_child(i32 %0, %struct.pci_devinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_devinfo*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.pci_devinfo* %1, %struct.pci_devinfo** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @device_add_child(i32 %6, i32* null, i32 -1)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %9 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i32 %7, i32* %10, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %13 = call i32 @device_set_ivars(i32 %11, %struct.pci_devinfo* %12)
  %14 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %15 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %14, i32 0, i32 1
  %16 = call i32 @resource_list_init(i32* %15)
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %19 = call i32 @pci_cfg_save(i32 %17, %struct.pci_devinfo* %18, i32 0)
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %22 = call i32 @pci_cfg_restore(i32 %20, %struct.pci_devinfo* %21)
  %23 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %24 = call i32 @pci_print_verbose(%struct.pci_devinfo* %23)
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @pci_add_resources(i32 %25, i32 %26, i32 0, i32 0)
  %28 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %29 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pci_child_added(i32 %31)
  %33 = load i64, i64* @pci_clear_aer_on_attach, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %2
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %38 = call i32 @pci_add_child_clear_aer(i32 %36, %struct.pci_devinfo* %37)
  br label %39

39:                                               ; preds = %35, %2
  %40 = load i32, i32* @pci_add_device, align 4
  %41 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %42 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @EVENTHANDLER_INVOKE(i32 %40, i32 %44)
  ret void
}

declare dso_local i32 @device_add_child(i32, i32*, i32) #1

declare dso_local i32 @device_set_ivars(i32, %struct.pci_devinfo*) #1

declare dso_local i32 @resource_list_init(i32*) #1

declare dso_local i32 @pci_cfg_save(i32, %struct.pci_devinfo*, i32) #1

declare dso_local i32 @pci_cfg_restore(i32, %struct.pci_devinfo*) #1

declare dso_local i32 @pci_print_verbose(%struct.pci_devinfo*) #1

declare dso_local i32 @pci_add_resources(i32, i32, i32, i32) #1

declare dso_local i32 @pci_child_added(i32) #1

declare dso_local i32 @pci_add_child_clear_aer(i32, %struct.pci_devinfo*) #1

declare dso_local i32 @EVENTHANDLER_INVOKE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
