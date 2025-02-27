; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c___ip6_del_cached_rt.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c___ip6_del_cached_rt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt6_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.fib6_config = type { i64, i32, i32 }

@ESRCH = common dso_local global i32 0, align 4
@RTF_GATEWAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt6_info*, %struct.fib6_config*)* @__ip6_del_cached_rt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ip6_del_cached_rt(%struct.rt6_info* %0, %struct.fib6_config* %1) #0 {
  %3 = alloca %struct.rt6_info*, align 8
  %4 = alloca %struct.fib6_config*, align 8
  %5 = alloca i32, align 4
  store %struct.rt6_info* %0, %struct.rt6_info** %3, align 8
  store %struct.fib6_config* %1, %struct.fib6_config** %4, align 8
  %6 = load i32, i32* @ESRCH, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.fib6_config*, %struct.fib6_config** %4, align 8
  %9 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %14 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.fib6_config*, %struct.fib6_config** %4, align 8
  %20 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  br label %42

24:                                               ; preds = %12, %2
  %25 = load %struct.fib6_config*, %struct.fib6_config** %4, align 8
  %26 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @RTF_GATEWAY, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load %struct.fib6_config*, %struct.fib6_config** %4, align 8
  %33 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %32, i32 0, i32 2
  %34 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %35 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %34, i32 0, i32 0
  %36 = call i32 @ipv6_addr_equal(i32* %33, i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  br label %42

39:                                               ; preds = %31, %24
  %40 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %41 = call i32 @rt6_remove_exception_rt(%struct.rt6_info* %40)
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %39, %38, %23
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @ipv6_addr_equal(i32*, i32*) #1

declare dso_local i32 @rt6_remove_exception_rt(%struct.rt6_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
