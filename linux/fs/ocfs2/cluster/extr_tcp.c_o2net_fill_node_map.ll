; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_tcp.c_o2net_fill_node_map.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_tcp.c_o2net_fill_node_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2net_sock_container = type { i32 }

@O2NM_MAX_NODES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @o2net_fill_node_map(i64* %0, i32 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.o2net_sock_container*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = zext i32 %8 to i64
  %10 = load i32, i32* @O2NM_MAX_NODES, align 4
  %11 = call i32 @BITS_TO_LONGS(i32 %10)
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 8
  %14 = icmp ult i64 %9, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load i64*, i64** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @memset(i64* %17, i32 0, i32 %18)
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %40, %2
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @O2NM_MAX_NODES, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @o2net_nn_from_num(i32 %25)
  %27 = call i32 @o2net_tx_can_proceed(i32 %26, %struct.o2net_sock_container** %5, i32* %7)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %40

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %6, align 4
  %35 = load i64*, i64** %3, align 8
  %36 = call i32 @set_bit(i32 %34, i64* %35)
  %37 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %5, align 8
  %38 = call i32 @sc_put(%struct.o2net_sock_container* %37)
  br label %39

39:                                               ; preds = %33, %30
  br label %40

40:                                               ; preds = %39, %29
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %20

43:                                               ; preds = %20
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @o2net_tx_can_proceed(i32, %struct.o2net_sock_container**, i32*) #1

declare dso_local i32 @o2net_nn_from_num(i32) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @sc_put(%struct.o2net_sock_container*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
