; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_testutils.c_regress_get_socket_port.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_testutils.c_regress_get_socket_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i64 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regress_get_socket_port(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_storage, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 8, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = bitcast %struct.sockaddr_storage* %4 to %struct.sockaddr*
  %8 = call i64 @getsockname(i32 %6, %struct.sockaddr* %7, i32* %5)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %32

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %4, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @AF_INET, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = bitcast %struct.sockaddr_storage* %4 to %struct.sockaddr_in*
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @ntohs(i32 %19)
  store i32 %20, i32* %2, align 4
  br label %32

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %4, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @AF_INET6, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = bitcast %struct.sockaddr_storage* %4 to %struct.sockaddr_in6*
  %28 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @ntohs(i32 %29)
  store i32 %30, i32* %2, align 4
  br label %32

31:                                               ; preds = %21
  store i32 -1, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %26, %16, %10
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i64 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
