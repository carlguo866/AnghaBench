; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svcauth_unix.c_hash_ip6.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svcauth_unix.c_hash_ip6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @hash_ip6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_ip6(i32* %0) #0 {
  %2 = alloca %struct.in6_addr, align 8
  %3 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %2, i32 0, i32 0
  store i32* %0, i32** %3, align 8
  %4 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %2, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @hash_ip(i32 %7)
  %9 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %2, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @hash_ip(i32 %12)
  %14 = xor i32 %8, %13
  %15 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %2, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @hash_ip(i32 %18)
  %20 = xor i32 %14, %19
  %21 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %2, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @hash_ip(i32 %24)
  %26 = xor i32 %20, %25
  ret i32 %26
}

declare dso_local i32 @hash_ip(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
