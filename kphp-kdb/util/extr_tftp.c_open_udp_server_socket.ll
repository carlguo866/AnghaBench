; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_tftp.c_open_udp_server_socket.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_tftp.c_open_udp_server_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }

@open_udp_server_socket.settings_addr = internal global %struct.in_addr zeroinitializer, align 4
@backlog = common dso_local global i32 0, align 4
@SM_UDP = common dso_local global i64 0, align 8
@enable_ipv6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @open_udp_server_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_udp_server_socket(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @backlog, align 4
  %5 = load i64, i64* @SM_UDP, align 8
  %6 = load i64, i64* @enable_ipv6, align 8
  %7 = add nsw i64 %5, %6
  %8 = load i32, i32* getelementptr inbounds (%struct.in_addr, %struct.in_addr* @open_udp_server_socket.settings_addr, i32 0, i32 0), align 4
  %9 = call i32 @server_socket(i32 %3, i32 %8, i32 %4, i64 %7)
  ret i32 %9
}

declare dso_local i32 @server_socket(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
