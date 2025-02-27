; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_highspeed.c_hstcp_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_highspeed.c_hstcp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32 }
%struct.hstcp = type { i64 }

@u32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @hstcp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hstcp_init(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.tcp_sock*, align 8
  %4 = alloca %struct.hstcp*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %5)
  store %struct.tcp_sock* %6, %struct.tcp_sock** %3, align 8
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = call %struct.hstcp* @inet_csk_ca(%struct.sock* %7)
  store %struct.hstcp* %8, %struct.hstcp** %4, align 8
  %9 = load %struct.hstcp*, %struct.hstcp** %4, align 8
  %10 = getelementptr inbounds %struct.hstcp, %struct.hstcp* %9, i32 0, i32 0
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* @u32, align 4
  %12 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %13 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @min_t(i32 %11, i32 %14, i32 33554431)
  %16 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %17 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.hstcp* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
