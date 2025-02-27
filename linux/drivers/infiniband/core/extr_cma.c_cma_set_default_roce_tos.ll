; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_set_default_roce_tos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_set_default_roce_tos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cma_device = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cma_set_default_roce_tos(%struct.cma_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cma_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cma_device* %0, %struct.cma_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.cma_device*, %struct.cma_device** %5, align 8
  %9 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @rdma_is_port_valid(i32 %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %30

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.cma_device*, %struct.cma_device** %5, align 8
  %20 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.cma_device*, %struct.cma_device** %5, align 8
  %24 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @rdma_start_port(i32 %25)
  %27 = sub i32 %22, %26
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %21, i64 %28
  store i32 %18, i32* %29, align 4
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %17, %14
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @rdma_is_port_valid(i32, i32) #1

declare dso_local i32 @rdma_start_port(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
