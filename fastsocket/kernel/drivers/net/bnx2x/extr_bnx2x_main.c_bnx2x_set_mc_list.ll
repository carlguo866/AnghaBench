; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_set_mc_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_set_mc_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.bnx2x_mcast_ramrod_params = type { i32*, i32* }

@BNX2X_MCAST_CMD_DEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Failed to clear multicast configuration: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed to create multicast MACs list: %d\0A\00", align 1
@BNX2X_MCAST_CMD_ADD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Failed to set a new multicast configuration: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*)* @bnx2x_set_mc_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_set_mc_list(%struct.bnx2x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.bnx2x_mcast_ramrod_params, align 8
  %6 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  %7 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %8 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %7, i32 0, i32 1
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %4, align 8
  %10 = bitcast %struct.bnx2x_mcast_ramrod_params* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 16, i1 false)
  store i32 0, i32* %6, align 4
  %11 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %12 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %5, i32 0, i32 0
  store i32* %12, i32** %13, align 8
  %14 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %15 = load i32, i32* @BNX2X_MCAST_CMD_DEL, align 4
  %16 = call i32 @bnx2x_config_mcast(%struct.bnx2x* %14, %struct.bnx2x_mcast_ramrod_params* %5, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %49

23:                                               ; preds = %1
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = call i64 @netdev_mc_count(%struct.net_device* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %23
  %28 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %29 = call i32 @bnx2x_init_mcast_macs_list(%struct.bnx2x* %28, %struct.bnx2x_mcast_ramrod_params* %5)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %49

36:                                               ; preds = %27
  %37 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %38 = load i32, i32* @BNX2X_MCAST_CMD_ADD, align 4
  %39 = call i32 @bnx2x_config_mcast(%struct.bnx2x* %37, %struct.bnx2x_mcast_ramrod_params* %5, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %42, %36
  %46 = call i32 @bnx2x_free_mcast_macs_list(%struct.bnx2x_mcast_ramrod_params* %5)
  br label %47

47:                                               ; preds = %45, %23
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %47, %32, %19
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnx2x_config_mcast(%struct.bnx2x*, %struct.bnx2x_mcast_ramrod_params*, i32) #2

declare dso_local i32 @BNX2X_ERR(i8*, i32) #2

declare dso_local i64 @netdev_mc_count(%struct.net_device*) #2

declare dso_local i32 @bnx2x_init_mcast_macs_list(%struct.bnx2x*, %struct.bnx2x_mcast_ramrod_params*) #2

declare dso_local i32 @bnx2x_free_mcast_macs_list(%struct.bnx2x_mcast_ramrod_params*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
