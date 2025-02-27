; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_tunnel_key.c_tunnel_key_opts_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_tunnel_key.c_tunnel_key_opts_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ip_tunnel_info = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nlattr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@TCA_TUNNEL_KEY_ENC_OPTS = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@TUNNEL_GENEVE_OPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.ip_tunnel_info*)* @tunnel_key_opts_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tunnel_key_opts_dump(%struct.sk_buff* %0, %struct.ip_tunnel_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ip_tunnel_info*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.ip_tunnel_info* %1, %struct.ip_tunnel_info** %5, align 8
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %5, align 8
  %11 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %50

15:                                               ; preds = %2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = load i32, i32* @TCA_TUNNEL_KEY_ENC_OPTS, align 4
  %18 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %16, i32 %17)
  store %struct.nlattr* %18, %struct.nlattr** %6, align 8
  %19 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %20 = icmp ne %struct.nlattr* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @EMSGSIZE, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %50

24:                                               ; preds = %15
  %25 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %5, align 8
  %26 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @TUNNEL_GENEVE_OPT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %24
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %5, align 8
  %35 = call i32 @tunnel_key_geneve_opts_dump(%struct.sk_buff* %33, %struct.ip_tunnel_info* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %41

39:                                               ; preds = %32
  br label %46

40:                                               ; preds = %24
  br label %41

41:                                               ; preds = %40, %38
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %44 = call i32 @nla_nest_cancel(%struct.sk_buff* %42, %struct.nlattr* %43)
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %50

46:                                               ; preds = %39
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %49 = call i32 @nla_nest_end(%struct.sk_buff* %47, %struct.nlattr* %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %46, %41, %21, %14
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i32 @tunnel_key_geneve_opts_dump(%struct.sk_buff*, %struct.ip_tunnel_info*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
