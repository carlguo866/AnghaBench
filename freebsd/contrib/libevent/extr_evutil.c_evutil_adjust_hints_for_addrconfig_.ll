; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evutil.c_evutil_adjust_hints_for_addrconfig_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evutil.c_evutil_adjust_hints_for_addrconfig_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evutil_addrinfo = type { i32, i64 }

@EVUTIL_AI_ADDRCONFIG = common dso_local global i32 0, align 4
@PF_UNSPEC = common dso_local global i64 0, align 8
@have_checked_interfaces = common dso_local global i32 0, align 4
@had_ipv4_address = common dso_local global i64 0, align 8
@had_ipv6_address = common dso_local global i64 0, align 8
@PF_INET = common dso_local global i64 0, align 8
@PF_INET6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evutil_adjust_hints_for_addrconfig_(%struct.evutil_addrinfo* %0) #0 {
  %2 = alloca %struct.evutil_addrinfo*, align 8
  store %struct.evutil_addrinfo* %0, %struct.evutil_addrinfo** %2, align 8
  %3 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %2, align 8
  %4 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @EVUTIL_AI_ADDRCONFIG, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %43

10:                                               ; preds = %1
  %11 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %2, align 8
  %12 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PF_UNSPEC, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %43

17:                                               ; preds = %10
  %18 = load i32, i32* @have_checked_interfaces, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = call i32 @evutil_check_interfaces(i32 0)
  br label %22

22:                                               ; preds = %20, %17
  %23 = load i64, i64* @had_ipv4_address, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i64, i64* @had_ipv6_address, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load i64, i64* @PF_INET, align 8
  %30 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %2, align 8
  %31 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  br label %43

32:                                               ; preds = %25, %22
  %33 = load i64, i64* @had_ipv4_address, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %32
  %36 = load i64, i64* @had_ipv6_address, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i64, i64* @PF_INET6, align 8
  %40 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %2, align 8
  %41 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %38, %35, %32
  br label %43

43:                                               ; preds = %9, %16, %42, %28
  ret void
}

declare dso_local i32 @evutil_check_interfaces(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
