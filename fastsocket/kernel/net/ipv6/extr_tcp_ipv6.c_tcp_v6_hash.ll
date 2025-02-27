; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_tcp_ipv6.c_tcp_v6_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_tcp_ipv6.c_tcp_v6_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (%struct.sock*)* }
%struct.sock = type { i64 }
%struct.TYPE_4__ = type { i32* }

@TCP_CLOSE = common dso_local global i64 0, align 8
@ipv6_mapped = common dso_local global i32 0, align 4
@tcp_prot = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @tcp_v6_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_v6_hash(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %3 = load %struct.sock*, %struct.sock** %2, align 8
  %4 = getelementptr inbounds %struct.sock, %struct.sock* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @TCP_CLOSE, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = call %struct.TYPE_4__* @inet_csk(%struct.sock* %9)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, @ipv6_mapped
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tcp_prot, i32 0, i32 0), align 8
  %16 = load %struct.sock*, %struct.sock** %2, align 8
  %17 = call i32 %15(%struct.sock* %16)
  br label %23

18:                                               ; preds = %8
  %19 = call i32 (...) @local_bh_disable()
  %20 = load %struct.sock*, %struct.sock** %2, align 8
  %21 = call i32 @__inet6_hash(%struct.sock* %20)
  %22 = call i32 (...) @local_bh_enable()
  br label %23

23:                                               ; preds = %14, %18, %1
  ret void
}

declare dso_local %struct.TYPE_4__* @inet_csk(%struct.sock*) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @__inet6_hash(%struct.sock*) #1

declare dso_local i32 @local_bh_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
