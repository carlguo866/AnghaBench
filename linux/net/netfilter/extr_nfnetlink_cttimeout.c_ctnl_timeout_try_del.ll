; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_cttimeout.c_ctnl_timeout_try_del.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_cttimeout.c_ctnl_timeout_try_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.ctnl_timeout = type { i32, i32, i32 }

@rcu_head = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.ctnl_timeout*)* @ctnl_timeout_try_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnl_timeout_try_del(%struct.net* %0, %struct.ctnl_timeout* %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.ctnl_timeout*, align 8
  %5 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %3, align 8
  store %struct.ctnl_timeout* %1, %struct.ctnl_timeout** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.ctnl_timeout*, %struct.ctnl_timeout** %4, align 8
  %7 = getelementptr inbounds %struct.ctnl_timeout, %struct.ctnl_timeout* %6, i32 0, i32 2
  %8 = call i64 @refcount_dec_if_one(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load %struct.ctnl_timeout*, %struct.ctnl_timeout** %4, align 8
  %12 = getelementptr inbounds %struct.ctnl_timeout, %struct.ctnl_timeout* %11, i32 0, i32 1
  %13 = call i32 @list_del_rcu(i32* %12)
  %14 = load %struct.net*, %struct.net** %3, align 8
  %15 = load %struct.ctnl_timeout*, %struct.ctnl_timeout** %4, align 8
  %16 = getelementptr inbounds %struct.ctnl_timeout, %struct.ctnl_timeout* %15, i32 0, i32 0
  %17 = call i32 @nf_ct_untimeout(%struct.net* %14, i32* %16)
  %18 = load %struct.ctnl_timeout*, %struct.ctnl_timeout** %4, align 8
  %19 = load i32, i32* @rcu_head, align 4
  %20 = call i32 @kfree_rcu(%struct.ctnl_timeout* %18, i32 %19)
  br label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %21, %10
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

declare dso_local i64 @refcount_dec_if_one(i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @nf_ct_untimeout(%struct.net*, i32*) #1

declare dso_local i32 @kfree_rcu(%struct.ctnl_timeout*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
