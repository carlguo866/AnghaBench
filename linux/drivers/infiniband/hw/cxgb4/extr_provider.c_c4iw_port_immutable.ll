; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_provider.c_c4iw_port_immutable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_provider.c_c4iw_port_immutable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_port_immutable = type { i32, i32, i32 }
%struct.ib_port_attr = type { i32, i32 }

@RDMA_CORE_PORT_IWARP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, %struct.ib_port_immutable*)* @c4iw_port_immutable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c4iw_port_immutable(%struct.ib_device* %0, i32 %1, %struct.ib_port_immutable* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_port_immutable*, align 8
  %8 = alloca %struct.ib_port_attr, align 4
  %9 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_port_immutable* %2, %struct.ib_port_immutable** %7, align 8
  %10 = load i32, i32* @RDMA_CORE_PORT_IWARP, align 4
  %11 = load %struct.ib_port_immutable*, %struct.ib_port_immutable** %7, align 8
  %12 = getelementptr inbounds %struct.ib_port_immutable, %struct.ib_port_immutable* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  %13 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @ib_query_port(%struct.ib_device* %13, i32 %14, %struct.ib_port_attr* %8)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %4, align 4
  br label %29

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %8, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ib_port_immutable*, %struct.ib_port_immutable** %7, align 8
  %24 = getelementptr inbounds %struct.ib_port_immutable, %struct.ib_port_immutable* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %8, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ib_port_immutable*, %struct.ib_port_immutable** %7, align 8
  %28 = getelementptr inbounds %struct.ib_port_immutable, %struct.ib_port_immutable* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %20, %18
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @ib_query_port(%struct.ib_device*, i32, %struct.ib_port_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
