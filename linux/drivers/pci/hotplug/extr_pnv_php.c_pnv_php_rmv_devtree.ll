; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pnv_php.c_pnv_php_rmv_devtree.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pnv_php.c_pnv_php_rmv_devtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnv_php_slot = type { i32*, %struct.TYPE_3__*, i32*, i32 }
%struct.TYPE_3__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pnv_php_slot*)* @pnv_php_rmv_devtree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnv_php_rmv_devtree(%struct.pnv_php_slot* %0) #0 {
  %2 = alloca %struct.pnv_php_slot*, align 8
  store %struct.pnv_php_slot* %0, %struct.pnv_php_slot** %2, align 8
  %3 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %2, align 8
  %4 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %3, i32 0, i32 1
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = call i32 @pnv_php_rmv_pdns(%struct.TYPE_3__* %5)
  %7 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %2, align 8
  %8 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %2, align 8
  %13 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %12, i32 0, i32 3
  %14 = call i32 @of_changeset_destroy(i32* %13)
  br label %15

15:                                               ; preds = %11, %1
  %16 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %2, align 8
  %17 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = call i32 @pnv_php_detach_device_nodes(%struct.TYPE_3__* %18)
  %20 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %2, align 8
  %21 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %41

24:                                               ; preds = %15
  %25 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %2, align 8
  %26 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @kfree(i32* %27)
  %29 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %2, align 8
  %30 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @kfree(i32* %31)
  %33 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %2, align 8
  %34 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %33, i32 0, i32 2
  store i32* null, i32** %34, align 8
  %35 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %2, align 8
  %36 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  %39 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %2, align 8
  %40 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  br label %41

41:                                               ; preds = %24, %15
  ret void
}

declare dso_local i32 @pnv_php_rmv_pdns(%struct.TYPE_3__*) #1

declare dso_local i32 @of_changeset_destroy(i32*) #1

declare dso_local i32 @pnv_php_detach_device_nodes(%struct.TYPE_3__*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
