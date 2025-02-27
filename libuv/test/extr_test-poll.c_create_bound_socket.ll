; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-poll.c_create_bound_socket.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-poll.c_create_bound_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_IP = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @create_bound_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @create_bound_socket(i32 %0) #0 {
  %2 = alloca %struct.sockaddr_in, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i32 0, i32 0
  store i32 %0, i32* %6, align 4
  %7 = load i32, i32* @AF_INET, align 4
  %8 = load i32, i32* @SOCK_STREAM, align 4
  %9 = load i32, i32* @IPPROTO_IP, align 4
  %10 = call i64 @socket(i32 %7, i32 %8, i32 %9)
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = icmp sge i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @ASSERT(i32 %13)
  store i32 1, i32* %5, align 4
  %15 = load i64, i64* %3, align 8
  %16 = load i32, i32* @SOL_SOCKET, align 4
  %17 = load i32, i32* @SO_REUSEADDR, align 4
  %18 = call i32 @setsockopt(i64 %15, i32 %16, i32 %17, i32* %5, i32 4)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load i64, i64* %3, align 8
  %24 = bitcast %struct.sockaddr_in* %2 to %struct.sockaddr*
  %25 = call i32 @bind(i64 %23, %struct.sockaddr* %24, i32 4)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @ASSERT(i32 %28)
  %30 = load i64, i64* %3, align 8
  ret i64 %30
}

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @setsockopt(i64, i32, i32, i32*, i32) #1

declare dso_local i32 @bind(i64, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
