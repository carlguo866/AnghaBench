; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_dev.c_mtu2blksize.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_dev.c_mtu2blksize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64 }

@ARPHRD_ETHER = common dso_local global i64 0, align 8
@ARPHRD_PPP = common dso_local global i64 0, align 8
@ARPHRD_IPGRE = common dso_local global i64 0, align 8
@ARPHRD_LOOPBACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @mtu2blksize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtu2blksize(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = getelementptr inbounds %struct.net_device, %struct.net_device* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp sgt i32 %7, 65535
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 65535, i32* %3, align 4
  br label %10

10:                                               ; preds = %9, %1
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ARPHRD_ETHER, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %34, label %16

16:                                               ; preds = %10
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ARPHRD_PPP, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %34, label %22

22:                                               ; preds = %16
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ARPHRD_IPGRE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ARPHRD_LOOPBACK, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28, %22, %16, %10
  %35 = load i32, i32* %3, align 4
  %36 = sub nsw i32 %35, 2
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %34, %28
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
