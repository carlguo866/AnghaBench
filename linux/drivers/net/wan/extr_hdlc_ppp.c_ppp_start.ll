; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_hdlc_ppp.c_ppp_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_hdlc_ppp.c_ppp_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ppp = type { %struct.proto* }
%struct.proto = type { i32, i32, i32, %struct.net_device* }

@IDX_COUNT = common dso_local global i32 0, align 4
@ppp_timer = common dso_local global i32 0, align 4
@CLOSED = common dso_local global i32 0, align 4
@PID_LCP = common dso_local global i32 0, align 4
@IDX_LCP = common dso_local global i64 0, align 8
@PID_IPCP = common dso_local global i32 0, align 4
@IDX_IPCP = common dso_local global i64 0, align 8
@PID_IPV6CP = common dso_local global i32 0, align 4
@IDX_IPV6CP = common dso_local global i64 0, align 8
@START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ppp_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppp_start(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ppp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.proto*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.ppp* @get_ppp(%struct.net_device* %6)
  store %struct.ppp* %7, %struct.ppp** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %29, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @IDX_COUNT, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %8
  %13 = load %struct.ppp*, %struct.ppp** %3, align 8
  %14 = getelementptr inbounds %struct.ppp, %struct.ppp* %13, i32 0, i32 0
  %15 = load %struct.proto*, %struct.proto** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.proto, %struct.proto* %15, i64 %17
  store %struct.proto* %18, %struct.proto** %5, align 8
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = load %struct.proto*, %struct.proto** %5, align 8
  %21 = getelementptr inbounds %struct.proto, %struct.proto* %20, i32 0, i32 3
  store %struct.net_device* %19, %struct.net_device** %21, align 8
  %22 = load %struct.proto*, %struct.proto** %5, align 8
  %23 = getelementptr inbounds %struct.proto, %struct.proto* %22, i32 0, i32 2
  %24 = load i32, i32* @ppp_timer, align 4
  %25 = call i32 @timer_setup(i32* %23, i32 %24, i32 0)
  %26 = load i32, i32* @CLOSED, align 4
  %27 = load %struct.proto*, %struct.proto** %5, align 8
  %28 = getelementptr inbounds %struct.proto, %struct.proto* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %12
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %8

32:                                               ; preds = %8
  %33 = load i32, i32* @PID_LCP, align 4
  %34 = load %struct.ppp*, %struct.ppp** %3, align 8
  %35 = getelementptr inbounds %struct.ppp, %struct.ppp* %34, i32 0, i32 0
  %36 = load %struct.proto*, %struct.proto** %35, align 8
  %37 = load i64, i64* @IDX_LCP, align 8
  %38 = getelementptr inbounds %struct.proto, %struct.proto* %36, i64 %37
  %39 = getelementptr inbounds %struct.proto, %struct.proto* %38, i32 0, i32 0
  store i32 %33, i32* %39, align 8
  %40 = load i32, i32* @PID_IPCP, align 4
  %41 = load %struct.ppp*, %struct.ppp** %3, align 8
  %42 = getelementptr inbounds %struct.ppp, %struct.ppp* %41, i32 0, i32 0
  %43 = load %struct.proto*, %struct.proto** %42, align 8
  %44 = load i64, i64* @IDX_IPCP, align 8
  %45 = getelementptr inbounds %struct.proto, %struct.proto* %43, i64 %44
  %46 = getelementptr inbounds %struct.proto, %struct.proto* %45, i32 0, i32 0
  store i32 %40, i32* %46, align 8
  %47 = load i32, i32* @PID_IPV6CP, align 4
  %48 = load %struct.ppp*, %struct.ppp** %3, align 8
  %49 = getelementptr inbounds %struct.ppp, %struct.ppp* %48, i32 0, i32 0
  %50 = load %struct.proto*, %struct.proto** %49, align 8
  %51 = load i64, i64* @IDX_IPV6CP, align 8
  %52 = getelementptr inbounds %struct.proto, %struct.proto* %50, i64 %51
  %53 = getelementptr inbounds %struct.proto, %struct.proto* %52, i32 0, i32 0
  store i32 %47, i32* %53, align 8
  %54 = load %struct.net_device*, %struct.net_device** %2, align 8
  %55 = load i32, i32* @PID_LCP, align 4
  %56 = load i32, i32* @START, align 4
  %57 = call i32 @ppp_cp_event(%struct.net_device* %54, i32 %55, i32 %56, i32 0, i32 0, i32 0, i32* null)
  ret void
}

declare dso_local %struct.ppp* @get_ppp(%struct.net_device*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @ppp_cp_event(%struct.net_device*, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
