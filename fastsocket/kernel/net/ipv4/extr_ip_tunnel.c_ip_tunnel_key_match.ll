; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_tunnel.c_ip_tunnel_key_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_tunnel.c_ip_tunnel_key_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_tunnel_parm = type { i32, i64 }

@TUNNEL_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_tunnel_parm*, i32, i64)* @ip_tunnel_key_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_tunnel_key_match(%struct.ip_tunnel_parm* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_tunnel_parm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.ip_tunnel_parm* %0, %struct.ip_tunnel_parm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %8 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %5, align 8
  %9 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @TUNNEL_KEY, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @TUNNEL_KEY, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load i64, i64* %7, align 8
  %21 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %5, align 8
  %22 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %4, align 4
  br label %34

26:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %34

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @TUNNEL_KEY, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %27, %26, %19
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
