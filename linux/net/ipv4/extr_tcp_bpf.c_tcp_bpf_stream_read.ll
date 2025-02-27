; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bpf.c_tcp_bpf_stream_read.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bpf.c_tcp_bpf_stream_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_psock = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @tcp_bpf_stream_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_bpf_stream_read(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.sk_psock*, align 8
  %4 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  store i32 1, i32* %4, align 4
  %5 = call i32 (...) @rcu_read_lock()
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = call %struct.sk_psock* @sk_psock(%struct.sock* %6)
  store %struct.sk_psock* %7, %struct.sk_psock** %3, align 8
  %8 = load %struct.sk_psock*, %struct.sk_psock** %3, align 8
  %9 = call i64 @likely(%struct.sk_psock* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.sk_psock*, %struct.sk_psock** %3, align 8
  %13 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %12, i32 0, i32 0
  %14 = call i32 @list_empty(i32* %13)
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %11, %1
  %16 = call i32 (...) @rcu_read_unlock()
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  ret i32 %20
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.sk_psock* @sk_psock(%struct.sock*) #1

declare dso_local i64 @likely(%struct.sk_psock*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
