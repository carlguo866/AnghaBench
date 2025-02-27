; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_syncookies.c___cookie_v4_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_syncookies.c___cookie_v4_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iphdr = type { i32, i32 }
%struct.tcphdr = type { i32, i32, i32 }

@msstab = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cookie_v4_check(%struct.iphdr* %0, %struct.tcphdr* %1, i32 %2) #0 {
  %4 = alloca %struct.iphdr*, align 8
  %5 = alloca %struct.tcphdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.iphdr* %0, %struct.iphdr** %4, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %10 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @ntohl(i32 %11)
  %13 = sub i64 %12, 1
  store i64 %13, i64* %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %16 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %19 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %22 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %25 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %7, align 8
  %28 = call i64 @check_tcp_syn_cookie(i32 %14, i32 %17, i32 %20, i32 %23, i32 %26, i64 %27)
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i32*, i32** @msstab, align 8
  %31 = call i64 @ARRAY_SIZE(i32* %30)
  %32 = icmp ult i64 %29, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %3
  %34 = load i32*, i32** @msstab, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  br label %39

38:                                               ; preds = %3
  br label %39

39:                                               ; preds = %38, %33
  %40 = phi i32 [ %37, %33 ], [ 0, %38 ]
  ret i32 %40
}

declare dso_local i64 @ntohl(i32) #1

declare dso_local i64 @check_tcp_syn_cookie(i32, i32, i32, i32, i32, i64) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
