; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_msm_serial.c_msm_release_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_msm_serial.c_msm_release_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32*, i32, i32 }
%struct.platform_device = type { i32 }
%struct.resource = type { i64, i64 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @msm_release_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msm_release_port(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.platform_device* @to_platform_device(i32 %8)
  store %struct.platform_device* %9, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = load i32, i32* @IORESOURCE_MEM, align 4
  %12 = call %struct.resource* @platform_get_resource(%struct.platform_device* %10, i32 %11, i32 0)
  store %struct.resource* %12, %struct.resource** %4, align 8
  %13 = load %struct.resource*, %struct.resource** %4, align 8
  %14 = icmp ne %struct.resource* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %40

20:                                               ; preds = %1
  %21 = load %struct.resource*, %struct.resource** %4, align 8
  %22 = getelementptr inbounds %struct.resource, %struct.resource* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.resource*, %struct.resource** %4, align 8
  %25 = getelementptr inbounds %struct.resource, %struct.resource* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %23, %26
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %5, align 8
  %29 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %30 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @release_mem_region(i32 %31, i64 %32)
  %34 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %35 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @iounmap(i32* %36)
  %38 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %39 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %38, i32 0, i32 0
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %20, %19
  ret void
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @release_mem_region(i32, i64) #1

declare dso_local i32 @iounmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
