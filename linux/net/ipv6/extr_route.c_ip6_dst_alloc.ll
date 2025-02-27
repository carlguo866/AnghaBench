; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_dst_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_dst_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt6_info = type { i32 }
%struct.net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.net_device = type { i32 }

@DST_OBSOLETE_FORCE_CHK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rt6_info* @ip6_dst_alloc(%struct.net* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rt6_info*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.net*, %struct.net** %4, align 8
  %9 = getelementptr inbounds %struct.net, %struct.net* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = load i32, i32* @DST_OBSOLETE_FORCE_CHK, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.rt6_info* @dst_alloc(i32* %10, %struct.net_device* %11, i32 1, i32 %12, i32 %13)
  store %struct.rt6_info* %14, %struct.rt6_info** %7, align 8
  %15 = load %struct.rt6_info*, %struct.rt6_info** %7, align 8
  %16 = icmp ne %struct.rt6_info* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load %struct.rt6_info*, %struct.rt6_info** %7, align 8
  %19 = call i32 @rt6_info_init(%struct.rt6_info* %18)
  %20 = load %struct.net*, %struct.net** %4, align 8
  %21 = getelementptr inbounds %struct.net, %struct.net* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = call i32 @atomic_inc(i32* %24)
  br label %26

26:                                               ; preds = %17, %3
  %27 = load %struct.rt6_info*, %struct.rt6_info** %7, align 8
  ret %struct.rt6_info* %27
}

declare dso_local %struct.rt6_info* @dst_alloc(i32*, %struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @rt6_info_init(%struct.rt6_info*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
