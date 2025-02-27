; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_NOTRACK.c_notrack_tg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_NOTRACK.c_notrack_tg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32*, i32 }
%struct.xt_target_param = type { i32 }

@XT_CONTINUE = common dso_local global i32 0, align 4
@nf_conntrack_untracked = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@IP_CT_NEW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_target_param*)* @notrack_tg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @notrack_tg(%struct.sk_buff* %0, %struct.xt_target_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_target_param*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_target_param* %1, %struct.xt_target_param** %5, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @XT_CONTINUE, align 4
  store i32 %11, i32* %3, align 4
  br label %23

12:                                               ; preds = %2
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  store i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nf_conntrack_untracked, i32 0, i32 0), i32** %14, align 8
  %15 = load i32, i32* @IP_CT_NEW, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @nf_conntrack_get(i32* %20)
  %22 = load i32, i32* @XT_CONTINUE, align 4
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %12, %10
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @nf_conntrack_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
