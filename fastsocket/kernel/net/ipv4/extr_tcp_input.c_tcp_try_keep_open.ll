; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_try_keep_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_try_keep_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@TCP_CA_Open = common dso_local global i32 0, align 4
@TCP_CA_Disorder = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @tcp_try_keep_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_try_keep_open(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.tcp_sock*, align 8
  %4 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %5)
  store %struct.tcp_sock* %6, %struct.tcp_sock** %3, align 8
  %7 = load i32, i32* @TCP_CA_Open, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %9 = call i64 @tcp_left_out(%struct.tcp_sock* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %13 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11, %1
  %17 = load i32, i32* @TCP_CA_Disorder, align 4
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %16, %11
  %19 = load %struct.sock*, %struct.sock** %2, align 8
  %20 = call %struct.TYPE_2__* @inet_csk(%struct.sock* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %18
  %26 = load %struct.sock*, %struct.sock** %2, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @tcp_set_ca_state(%struct.sock* %26, i32 %27)
  %29 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %30 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %33 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %25, %18
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @tcp_left_out(%struct.tcp_sock*) #1

declare dso_local %struct.TYPE_2__* @inet_csk(%struct.sock*) #1

declare dso_local i32 @tcp_set_ca_state(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
