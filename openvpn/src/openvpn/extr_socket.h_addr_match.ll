; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.h_addr_match.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.h_addr_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.openvpn_sockaddr = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.openvpn_sockaddr*, %struct.openvpn_sockaddr*)* @addr_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addr_match(%struct.openvpn_sockaddr* %0, %struct.openvpn_sockaddr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.openvpn_sockaddr*, align 8
  %5 = alloca %struct.openvpn_sockaddr*, align 8
  store %struct.openvpn_sockaddr* %0, %struct.openvpn_sockaddr** %4, align 8
  store %struct.openvpn_sockaddr* %1, %struct.openvpn_sockaddr** %5, align 8
  %6 = load %struct.openvpn_sockaddr*, %struct.openvpn_sockaddr** %4, align 8
  %7 = getelementptr inbounds %struct.openvpn_sockaddr, %struct.openvpn_sockaddr* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %36 [
    i32 129, label %11
    i32 128, label %26
  ]

11:                                               ; preds = %2
  %12 = load %struct.openvpn_sockaddr*, %struct.openvpn_sockaddr** %4, align 8
  %13 = getelementptr inbounds %struct.openvpn_sockaddr, %struct.openvpn_sockaddr* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.openvpn_sockaddr*, %struct.openvpn_sockaddr** %5, align 8
  %19 = getelementptr inbounds %struct.openvpn_sockaddr, %struct.openvpn_sockaddr* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %17, %23
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %3, align 4
  br label %38

26:                                               ; preds = %2
  %27 = load %struct.openvpn_sockaddr*, %struct.openvpn_sockaddr** %4, align 8
  %28 = getelementptr inbounds %struct.openvpn_sockaddr, %struct.openvpn_sockaddr* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load %struct.openvpn_sockaddr*, %struct.openvpn_sockaddr** %5, align 8
  %32 = getelementptr inbounds %struct.openvpn_sockaddr, %struct.openvpn_sockaddr* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = call i32 @IN6_ARE_ADDR_EQUAL(i32* %30, i32* %34)
  store i32 %35, i32* %3, align 4
  br label %38

36:                                               ; preds = %2
  %37 = call i32 @ASSERT(i32 0)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %26, %11
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @IN6_ARE_ADDR_EQUAL(i32*, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
