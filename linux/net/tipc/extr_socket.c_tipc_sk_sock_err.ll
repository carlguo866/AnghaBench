; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_sk_sock_err.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_sk_sock_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, %struct.sock* }
%struct.sock = type { i64 }

@SOCK_STREAM = common dso_local global i32 0, align 4
@SOCK_SEQPACKET = common dso_local global i32 0, align 4
@TIPC_DISCONNECTING = common dso_local global i64 0, align 8
@EPIPE = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i64*)* @tipc_sk_sock_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_sk_sock_err(%struct.socket* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load %struct.socket*, %struct.socket** %4, align 8
  %10 = getelementptr inbounds %struct.socket, %struct.socket* %9, i32 0, i32 1
  %11 = load %struct.sock*, %struct.sock** %10, align 8
  store %struct.sock* %11, %struct.sock** %6, align 8
  %12 = load %struct.sock*, %struct.sock** %6, align 8
  %13 = call i32 @sock_error(%struct.sock* %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.socket*, %struct.socket** %4, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %63

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @SOCK_STREAM, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @SOCK_SEQPACKET, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %25, %21
  %30 = load %struct.sock*, %struct.sock** %6, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TIPC_DISCONNECTING, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EPIPE, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %63

38:                                               ; preds = %29
  %39 = load %struct.sock*, %struct.sock** %6, align 8
  %40 = call i32 @tipc_sk_connected(%struct.sock* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @ENOTCONN, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %63

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45
  br label %47

47:                                               ; preds = %46, %25
  %48 = load i64*, i64** %5, align 8
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* @EAGAIN, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %63

54:                                               ; preds = %47
  %55 = load i32, i32* @current, align 4
  %56 = call i64 @signal_pending(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i64*, i64** %5, align 8
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @sock_intr_errno(i64 %60)
  store i32 %61, i32* %3, align 4
  br label %63

62:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %58, %51, %42, %35, %19
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @sock_error(%struct.sock*) #1

declare dso_local i32 @tipc_sk_connected(%struct.sock*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @sock_intr_errno(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
