; ModuleID = '/home/carl/AnghaBench/linux/net/key/extr_af_key.c_key_notify_sa_expire.c'
source_filename = "/home/carl/AnghaBench/linux/net/key/extr_af_key.c_key_notify_sa_expire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.km_event = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.sadb_msg = type { i64, i64, i64, i64, i32, i32, i32 }

@PF_KEY_V2 = common dso_local global i32 0, align 4
@SADB_EXPIRE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@BROADCAST_REGISTERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.km_event*)* @key_notify_sa_expire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_notify_sa_expire(%struct.xfrm_state* %0, %struct.km_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfrm_state*, align 8
  %5 = alloca %struct.km_event*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sadb_msg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %4, align 8
  store %struct.km_event* %1, %struct.km_event** %5, align 8
  %10 = load %struct.km_event*, %struct.km_event** %5, align 8
  %11 = getelementptr inbounds %struct.km_event, %struct.km_event* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 2, i32* %9, align 4
  br label %18

17:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  br label %18

18:                                               ; preds = %17, %16
  %19 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call %struct.sk_buff* @pfkey_xfrm_state2msg_expire(%struct.xfrm_state* %19, i32 %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %6, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = call i64 @IS_ERR(%struct.sk_buff* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = call i32 @PTR_ERR(%struct.sk_buff* %26)
  store i32 %27, i32* %3, align 4
  br label %60

28:                                               ; preds = %18
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.sadb_msg*
  store %struct.sadb_msg* %32, %struct.sadb_msg** %7, align 8
  %33 = load i32, i32* @PF_KEY_V2, align 4
  %34 = load %struct.sadb_msg*, %struct.sadb_msg** %7, align 8
  %35 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @SADB_EXPIRE, align 4
  %37 = load %struct.sadb_msg*, %struct.sadb_msg** %7, align 8
  %38 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 4
  %39 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %40 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @pfkey_proto2satype(i32 %42)
  %44 = load %struct.sadb_msg*, %struct.sadb_msg** %7, align 8
  %45 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  %46 = load %struct.sadb_msg*, %struct.sadb_msg** %7, align 8
  %47 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %46, i32 0, i32 3
  store i64 0, i64* %47, align 8
  %48 = load %struct.sadb_msg*, %struct.sadb_msg** %7, align 8
  %49 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %48, i32 0, i32 2
  store i64 0, i64* %49, align 8
  %50 = load %struct.sadb_msg*, %struct.sadb_msg** %7, align 8
  %51 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load %struct.sadb_msg*, %struct.sadb_msg** %7, align 8
  %53 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %55 = load i32, i32* @GFP_ATOMIC, align 4
  %56 = load i32, i32* @BROADCAST_REGISTERED, align 4
  %57 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %58 = call i32 @xs_net(%struct.xfrm_state* %57)
  %59 = call i32 @pfkey_broadcast(%struct.sk_buff* %54, i32 %55, i32 %56, i32* null, i32 %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %28, %25
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.sk_buff* @pfkey_xfrm_state2msg_expire(%struct.xfrm_state*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @pfkey_proto2satype(i32) #1

declare dso_local i32 @pfkey_broadcast(%struct.sk_buff*, i32, i32, i32*, i32) #1

declare dso_local i32 @xs_net(%struct.xfrm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
