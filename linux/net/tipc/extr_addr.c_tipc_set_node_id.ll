; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_addr.c_tipc_set_node_id.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_addr.c_tipc_set_node_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_net = type { i32, i32, i32, i32 }

@NODE_ID_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Own node identity %s, cluster identity %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_set_node_id(%struct.net* %0, i32* %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.tipc_net*, align 8
  %6 = alloca i32*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.net*, %struct.net** %3, align 8
  %8 = call %struct.tipc_net* @tipc_net(%struct.net* %7)
  store %struct.tipc_net* %8, %struct.tipc_net** %5, align 8
  %9 = load i32*, i32** %4, align 8
  store i32* %9, i32** %6, align 8
  %10 = load %struct.tipc_net*, %struct.tipc_net** %5, align 8
  %11 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* @NODE_ID_LEN, align 4
  %15 = call i32 @memcpy(i32 %12, i32* %13, i32 %14)
  %16 = load %struct.tipc_net*, %struct.tipc_net** %5, align 8
  %17 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @tipc_nodeid2string(i32 %18, i32* %19)
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = xor i32 %23, %26
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = load i32, i32* %29, align 4
  %31 = xor i32 %27, %30
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 3
  %34 = load i32, i32* %33, align 4
  %35 = xor i32 %31, %34
  %36 = load %struct.tipc_net*, %struct.tipc_net** %5, align 8
  %37 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.net*, %struct.net** %3, align 8
  %39 = call i32 @tipc_own_id_string(%struct.net* %38)
  %40 = load %struct.tipc_net*, %struct.tipc_net** %5, align 8
  %41 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @pr_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %42)
  ret void
}

declare dso_local %struct.tipc_net* @tipc_net(%struct.net*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @tipc_nodeid2string(i32, i32*) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @tipc_own_id_string(%struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
