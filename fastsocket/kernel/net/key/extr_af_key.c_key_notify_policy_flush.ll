; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_key_notify_policy_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_key_notify_policy_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.km_event = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.sadb_msg = type { i32, i64, i32, i64, i32, i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@SADB_X_SPDFLUSH = common dso_local global i32 0, align 4
@PF_KEY_V2 = common dso_local global i32 0, align 4
@SADB_SATYPE_UNSPEC = common dso_local global i32 0, align 4
@BROADCAST_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.km_event*)* @key_notify_policy_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_notify_policy_flush(%struct.km_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.km_event*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sadb_msg*, align 8
  store %struct.km_event* %0, %struct.km_event** %3, align 8
  %6 = load i32, i32* @GFP_ATOMIC, align 4
  %7 = call %struct.sk_buff* @alloc_skb(i32 64, i32 %6)
  store %struct.sk_buff* %7, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = icmp ne %struct.sk_buff* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOBUFS, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %49

13:                                               ; preds = %1
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call i64 @skb_put(%struct.sk_buff* %14, i32 48)
  %16 = inttoptr i64 %15 to %struct.sadb_msg*
  store %struct.sadb_msg* %16, %struct.sadb_msg** %5, align 8
  %17 = load i32, i32* @SADB_X_SPDFLUSH, align 4
  %18 = load %struct.sadb_msg*, %struct.sadb_msg** %5, align 8
  %19 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %18, i32 0, i32 7
  store i32 %17, i32* %19, align 4
  %20 = load %struct.km_event*, %struct.km_event** %3, align 8
  %21 = getelementptr inbounds %struct.km_event, %struct.km_event* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sadb_msg*, %struct.sadb_msg** %5, align 8
  %24 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 8
  %25 = load %struct.km_event*, %struct.km_event** %3, align 8
  %26 = getelementptr inbounds %struct.km_event, %struct.km_event* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sadb_msg*, %struct.sadb_msg** %5, align 8
  %29 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @PF_KEY_V2, align 4
  %31 = load %struct.sadb_msg*, %struct.sadb_msg** %5, align 8
  %32 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  %33 = load %struct.sadb_msg*, %struct.sadb_msg** %5, align 8
  %34 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %33, i32 0, i32 3
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* @SADB_SATYPE_UNSPEC, align 4
  %36 = load %struct.sadb_msg*, %struct.sadb_msg** %5, align 8
  %37 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.sadb_msg*, %struct.sadb_msg** %5, align 8
  %39 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %38, i32 0, i32 0
  store i32 12, i32* %39, align 8
  %40 = load %struct.sadb_msg*, %struct.sadb_msg** %5, align 8
  %41 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = load i32, i32* @GFP_ATOMIC, align 4
  %44 = load i32, i32* @BROADCAST_ALL, align 4
  %45 = load %struct.km_event*, %struct.km_event** %3, align 8
  %46 = getelementptr inbounds %struct.km_event, %struct.km_event* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @pfkey_broadcast(%struct.sk_buff* %42, i32 %43, i32 %44, i32* null, i32 %47)
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %13, %10
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @pfkey_broadcast(%struct.sk_buff*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
