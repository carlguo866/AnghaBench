; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_addr.h_addr_scope.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_addr.h_addr_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TIPC_ZONE_SCOPE = common dso_local global i32 0, align 4
@TIPC_NODE_SCOPE = common dso_local global i32 0, align 4
@TIPC_CLUSTER_SCOPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @addr_scope to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addr_scope(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp ne i32 %4, 0
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i64 @likely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @TIPC_ZONE_SCOPE, align 4
  store i32 %11, i32* %2, align 4
  br label %26

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @tipc_node(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @TIPC_NODE_SCOPE, align 4
  store i32 %17, i32* %2, align 4
  br label %26

18:                                               ; preds = %12
  %19 = load i32, i32* %3, align 4
  %20 = call i64 @tipc_cluster(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @TIPC_CLUSTER_SCOPE, align 4
  store i32 %23, i32* %2, align 4
  br label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @TIPC_ZONE_SCOPE, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %24, %22, %16, %10
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @tipc_node(i32) #1

declare dso_local i64 @tipc_cluster(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
