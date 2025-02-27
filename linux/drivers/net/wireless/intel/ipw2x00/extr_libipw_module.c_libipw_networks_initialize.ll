; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_libipw_module.c_libipw_networks_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_libipw_module.c_libipw_networks_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libipw_device = type { i32, %struct.TYPE_2__**, i32 }
%struct.TYPE_2__ = type { i32 }

@MAX_NETWORK_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.libipw_device*)* @libipw_networks_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @libipw_networks_initialize(%struct.libipw_device* %0) #0 {
  %2 = alloca %struct.libipw_device*, align 8
  %3 = alloca i32, align 4
  store %struct.libipw_device* %0, %struct.libipw_device** %2, align 8
  %4 = load %struct.libipw_device*, %struct.libipw_device** %2, align 8
  %5 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %4, i32 0, i32 0
  %6 = call i32 @INIT_LIST_HEAD(i32* %5)
  %7 = load %struct.libipw_device*, %struct.libipw_device** %2, align 8
  %8 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %7, i32 0, i32 2
  %9 = call i32 @INIT_LIST_HEAD(i32* %8)
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %26, %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @MAX_NETWORK_COUNT, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %10
  %15 = load %struct.libipw_device*, %struct.libipw_device** %2, align 8
  %16 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %17, i64 %19
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.libipw_device*, %struct.libipw_device** %2, align 8
  %24 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %23, i32 0, i32 0
  %25 = call i32 @list_add_tail(i32* %22, i32* %24)
  br label %26

26:                                               ; preds = %14
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %10

29:                                               ; preds = %10
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
