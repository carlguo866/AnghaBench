; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sock_addr.c_sendmsg4_rw_c_prog_load.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sock_addr.c_sendmsg4_rw_c_prog_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_addr_test = type { i32 }

@SENDMSG4_PROG_PATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock_addr_test*)* @sendmsg4_rw_c_prog_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sendmsg4_rw_c_prog_load(%struct.sock_addr_test* %0) #0 {
  %2 = alloca %struct.sock_addr_test*, align 8
  store %struct.sock_addr_test* %0, %struct.sock_addr_test** %2, align 8
  %3 = load %struct.sock_addr_test*, %struct.sock_addr_test** %2, align 8
  %4 = load i32, i32* @SENDMSG4_PROG_PATH, align 4
  %5 = call i32 @load_path(%struct.sock_addr_test* %3, i32 %4)
  ret i32 %5
}

declare dso_local i32 @load_path(%struct.sock_addr_test*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
