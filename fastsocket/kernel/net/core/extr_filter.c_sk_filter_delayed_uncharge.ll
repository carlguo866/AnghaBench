; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_filter.c_sk_filter_delayed_uncharge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_filter.c_sk_filter_delayed_uncharge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_filter = type { i32 }

@sk_filter_rcu_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_filter*)* @sk_filter_delayed_uncharge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sk_filter_delayed_uncharge(%struct.sock* %0, %struct.sk_filter* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_filter*, align 8
  %5 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_filter* %1, %struct.sk_filter** %4, align 8
  %6 = load %struct.sk_filter*, %struct.sk_filter** %4, align 8
  %7 = call i32 @sk_filter_len(%struct.sk_filter* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 0
  %11 = call i32 @atomic_sub(i32 %8, i32* %10)
  %12 = load %struct.sk_filter*, %struct.sk_filter** %4, align 8
  %13 = getelementptr inbounds %struct.sk_filter, %struct.sk_filter* %12, i32 0, i32 0
  %14 = load i32, i32* @sk_filter_rcu_release, align 4
  %15 = call i32 @call_rcu_bh(i32* %13, i32 %14)
  ret void
}

declare dso_local i32 @sk_filter_len(%struct.sk_filter*) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i32 @call_rcu_bh(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
