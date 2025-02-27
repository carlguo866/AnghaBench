; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_raw.c_raw6_local_deliver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_raw.c_raw6_local_deliver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.sk_buff = type { i32 }
%struct.sock = type { i32 }

@raw_v6_hashinfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@MAX_INET_PROTOS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @raw6_local_deliver(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @raw_v6_hashinfo, i32 0, i32 0), align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @MAX_INET_PROTOS, align 4
  %9 = sub nsw i32 %8, 1
  %10 = and i32 %7, %9
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %6, i64 %11
  %13 = call %struct.sock* @sk_head(i32* %12)
  store %struct.sock* %13, %struct.sock** %5, align 8
  %14 = load %struct.sock*, %struct.sock** %5, align 8
  %15 = icmp ne %struct.sock* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @ipv6_raw_deliver(%struct.sk_buff* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store %struct.sock* null, %struct.sock** %5, align 8
  br label %22

22:                                               ; preds = %21, %16, %2
  %23 = load %struct.sock*, %struct.sock** %5, align 8
  %24 = icmp ne %struct.sock* %23, null
  %25 = zext i1 %24 to i32
  ret i32 %25
}

declare dso_local %struct.sock* @sk_head(i32*) #1

declare dso_local i32 @ipv6_raw_deliver(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
