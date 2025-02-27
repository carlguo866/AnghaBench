; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_xfrm6_output.c_xfrm6_local_dontfrag.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_xfrm6_output.c_xfrm6_local_dontfrag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.sock* }
%struct.sock = type { i64, i32 }
%struct.TYPE_2__ = type { i32 }

@AF_INET6 = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i32 0, align 4
@IPPROTO_RAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @xfrm6_local_dontfrag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm6_local_dontfrag(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load %struct.sock*, %struct.sock** %7, align 8
  store %struct.sock* %8, %struct.sock** %5, align 8
  %9 = load %struct.sock*, %struct.sock** %5, align 8
  %10 = icmp ne %struct.sock* %9, null
  br i1 %10, label %11, label %35

11:                                               ; preds = %1
  %12 = load %struct.sock*, %struct.sock** %5, align 8
  %13 = getelementptr inbounds %struct.sock, %struct.sock* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @AF_INET6, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %36

18:                                               ; preds = %11
  %19 = load %struct.sock*, %struct.sock** %5, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @IPPROTO_UDP, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @IPPROTO_RAW, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25, %18
  %30 = load %struct.sock*, %struct.sock** %5, align 8
  %31 = call %struct.TYPE_2__* @inet6_sk(%struct.sock* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %2, align 4
  br label %36

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34, %1
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %29, %17
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.TYPE_2__* @inet6_sk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
