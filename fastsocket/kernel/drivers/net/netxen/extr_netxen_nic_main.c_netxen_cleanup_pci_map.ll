; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_main.c_netxen_cleanup_pci_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_main.c_netxen_cleanup_pci_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netxen_adapter*)* @netxen_cleanup_pci_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netxen_cleanup_pci_map(%struct.netxen_adapter* %0) #0 {
  %2 = alloca %struct.netxen_adapter*, align 8
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %2, align 8
  %3 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %4 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 3
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @iounmap(i32* %12)
  br label %14

14:                                               ; preds = %8, %1
  %15 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %22 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @iounmap(i32* %24)
  br label %26

26:                                               ; preds = %20, %14
  %27 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %28 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %34 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @iounmap(i32* %36)
  br label %38

38:                                               ; preds = %32, %26
  %39 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %40 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %46 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @iounmap(i32* %48)
  br label %50

50:                                               ; preds = %44, %38
  ret void
}

declare dso_local i32 @iounmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
