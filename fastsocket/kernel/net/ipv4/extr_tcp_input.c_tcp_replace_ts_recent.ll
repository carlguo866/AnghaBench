; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_replace_ts_recent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_replace_ts_recent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_sock = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_sock*, i32)* @tcp_replace_ts_recent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_replace_ts_recent(%struct.tcp_sock* %0, i32 %1) #0 {
  %3 = alloca %struct.tcp_sock*, align 8
  %4 = alloca i32, align 4
  store %struct.tcp_sock* %0, %struct.tcp_sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %6 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %13 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @after(i32 %11, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %10
  %18 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %19 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %18, i32 0, i32 0
  %20 = call i64 @tcp_paws_check(%struct.TYPE_2__* %19, i32 0)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %24 = call i32 @tcp_store_ts_recent(%struct.tcp_sock* %23)
  br label %25

25:                                               ; preds = %22, %17
  br label %26

26:                                               ; preds = %25, %10, %2
  ret void
}

declare dso_local i32 @after(i32, i32) #1

declare dso_local i64 @tcp_paws_check(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @tcp_store_ts_recent(%struct.tcp_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
