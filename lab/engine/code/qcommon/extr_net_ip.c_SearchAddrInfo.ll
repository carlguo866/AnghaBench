; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_net_ip.c_SearchAddrInfo.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_net_ip.c_SearchAddrInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i64, %struct.addrinfo* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.addrinfo* (%struct.addrinfo*, i64)* @SearchAddrInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.addrinfo* @SearchAddrInfo(%struct.addrinfo* %0, i64 %1) #0 {
  %3 = alloca %struct.addrinfo*, align 8
  %4 = alloca %struct.addrinfo*, align 8
  %5 = alloca i64, align 8
  store %struct.addrinfo* %0, %struct.addrinfo** %4, align 8
  store i64 %1, i64* %5, align 8
  br label %6

6:                                                ; preds = %17, %2
  %7 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %8 = icmp ne %struct.addrinfo* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %6
  %10 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %11 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  store %struct.addrinfo* %16, %struct.addrinfo** %3, align 8
  br label %22

17:                                               ; preds = %9
  %18 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %19 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %18, i32 0, i32 1
  %20 = load %struct.addrinfo*, %struct.addrinfo** %19, align 8
  store %struct.addrinfo* %20, %struct.addrinfo** %4, align 8
  br label %6

21:                                               ; preds = %6
  store %struct.addrinfo* null, %struct.addrinfo** %3, align 8
  br label %22

22:                                               ; preds = %21, %15
  %23 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  ret %struct.addrinfo* %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
