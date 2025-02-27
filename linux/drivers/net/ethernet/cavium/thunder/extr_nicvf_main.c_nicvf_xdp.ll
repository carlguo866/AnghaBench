; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_xdp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_xdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_bpf = type { i32, i32, i32 }
%struct.nicvf = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.netdev_bpf*)* @nicvf_xdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nicvf_xdp(%struct.net_device* %0, %struct.netdev_bpf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.netdev_bpf*, align 8
  %6 = alloca %struct.nicvf*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.netdev_bpf* %1, %struct.netdev_bpf** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.nicvf* @netdev_priv(%struct.net_device* %7)
  store %struct.nicvf* %8, %struct.nicvf** %6, align 8
  %9 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %10 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @pass1_silicon(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %48

17:                                               ; preds = %2
  %18 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %19 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %45 [
    i32 128, label %21
    i32 129, label %27
  ]

21:                                               ; preds = %17
  %22 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %23 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %24 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @nicvf_xdp_setup(%struct.nicvf* %22, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %48

27:                                               ; preds = %17
  %28 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %29 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = icmp ne %struct.TYPE_4__* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %34 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  br label %41

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40, %32
  %42 = phi i32 [ %39, %32 ], [ 0, %40 ]
  %43 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %44 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  store i32 0, i32* %3, align 4
  br label %48

45:                                               ; preds = %17
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %45, %41, %21, %14
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.nicvf* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @pass1_silicon(i32) #1

declare dso_local i32 @nicvf_xdp_setup(%struct.nicvf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
