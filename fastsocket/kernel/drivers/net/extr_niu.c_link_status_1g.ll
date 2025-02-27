; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_link_status_1g.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_link_status_1g.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, %struct.niu_link_config }
%struct.niu_link_config = type { i32, i32 }

@SUPPORTED_TP = common dso_local global i32 0, align 4
@ADVERTISED_TP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*, i32*)* @link_status_1g to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_status_1g(%struct.niu* %0, i32* %1) #0 {
  %3 = alloca %struct.niu*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.niu_link_config*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.niu*, %struct.niu** %3, align 8
  %9 = getelementptr inbounds %struct.niu, %struct.niu* %8, i32 0, i32 1
  store %struct.niu_link_config* %9, %struct.niu_link_config** %5, align 8
  %10 = load %struct.niu*, %struct.niu** %3, align 8
  %11 = getelementptr inbounds %struct.niu, %struct.niu* %10, i32 0, i32 0
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.niu*, %struct.niu** %3, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @link_status_mii(%struct.niu* %14, i32* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @SUPPORTED_TP, align 4
  %18 = load %struct.niu_link_config*, %struct.niu_link_config** %5, align 8
  %19 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* @ADVERTISED_TP, align 4
  %23 = load %struct.niu_link_config*, %struct.niu_link_config** %5, align 8
  %24 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load %struct.niu*, %struct.niu** %3, align 8
  %28 = getelementptr inbounds %struct.niu, %struct.niu* %27, i32 0, i32 0
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = load i32, i32* %7, align 4
  ret i32 %31
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @link_status_mii(%struct.niu*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
