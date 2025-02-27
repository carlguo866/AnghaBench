; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_axienet_main.c_axienet_setoptions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_axienet_main.c_axienet_setoptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axienet_option = type { i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.axienet_local = type { i32 }

@axienet_options = common dso_local global %struct.axienet_option* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @axienet_setoptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axienet_setoptions(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.axienet_local*, align 8
  %7 = alloca %struct.axienet_option*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.axienet_local* @netdev_priv(%struct.net_device* %8)
  store %struct.axienet_local* %9, %struct.axienet_local** %6, align 8
  %10 = load %struct.axienet_option*, %struct.axienet_option** @axienet_options, align 8
  %11 = getelementptr inbounds %struct.axienet_option, %struct.axienet_option* %10, i64 0
  store %struct.axienet_option* %11, %struct.axienet_option** %7, align 8
  br label %12

12:                                               ; preds = %40, %2
  %13 = load %struct.axienet_option*, %struct.axienet_option** %7, align 8
  %14 = getelementptr inbounds %struct.axienet_option, %struct.axienet_option* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %49

17:                                               ; preds = %12
  %18 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %19 = load %struct.axienet_option*, %struct.axienet_option** %7, align 8
  %20 = getelementptr inbounds %struct.axienet_option, %struct.axienet_option* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @axienet_ior(%struct.axienet_local* %18, i32 %21)
  %23 = load %struct.axienet_option*, %struct.axienet_option** %7, align 8
  %24 = getelementptr inbounds %struct.axienet_option, %struct.axienet_option* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %22, %26
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.axienet_option*, %struct.axienet_option** %7, align 8
  %30 = getelementptr inbounds %struct.axienet_option, %struct.axienet_option* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %17
  %35 = load %struct.axienet_option*, %struct.axienet_option** %7, align 8
  %36 = getelementptr inbounds %struct.axienet_option, %struct.axienet_option* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %34, %17
  %41 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %42 = load %struct.axienet_option*, %struct.axienet_option** %7, align 8
  %43 = getelementptr inbounds %struct.axienet_option, %struct.axienet_option* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @axienet_iow(%struct.axienet_local* %41, i32 %44, i32 %45)
  %47 = load %struct.axienet_option*, %struct.axienet_option** %7, align 8
  %48 = getelementptr inbounds %struct.axienet_option, %struct.axienet_option* %47, i32 1
  store %struct.axienet_option* %48, %struct.axienet_option** %7, align 8
  br label %12

49:                                               ; preds = %12
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %52 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  ret void
}

declare dso_local %struct.axienet_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @axienet_ior(%struct.axienet_local*, i32) #1

declare dso_local i32 @axienet_iow(%struct.axienet_local*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
