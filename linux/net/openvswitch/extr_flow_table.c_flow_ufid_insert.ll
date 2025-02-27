; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_table.c_flow_ufid_insert.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_table.c_flow_ufid_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_table = type { i64, i32 }
%struct.sw_flow = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.table_instance = type { i64, i32 }

@flow_tbl_destroy_rcu_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.flow_table*, %struct.sw_flow*)* @flow_ufid_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flow_ufid_insert(%struct.flow_table* %0, %struct.sw_flow* %1) #0 {
  %3 = alloca %struct.flow_table*, align 8
  %4 = alloca %struct.sw_flow*, align 8
  %5 = alloca %struct.table_instance*, align 8
  %6 = alloca %struct.table_instance*, align 8
  store %struct.flow_table* %0, %struct.flow_table** %3, align 8
  store %struct.sw_flow* %1, %struct.sw_flow** %4, align 8
  %7 = load %struct.sw_flow*, %struct.sw_flow** %4, align 8
  %8 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %7, i32 0, i32 0
  %9 = call i32 @ufid_hash(i32* %8)
  %10 = load %struct.sw_flow*, %struct.sw_flow** %4, align 8
  %11 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 4
  %13 = load %struct.flow_table*, %struct.flow_table** %3, align 8
  %14 = getelementptr inbounds %struct.flow_table, %struct.flow_table* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.table_instance* @ovsl_dereference(i32 %15)
  store %struct.table_instance* %16, %struct.table_instance** %5, align 8
  %17 = load %struct.table_instance*, %struct.table_instance** %5, align 8
  %18 = load %struct.sw_flow*, %struct.sw_flow** %4, align 8
  %19 = call i32 @ufid_table_instance_insert(%struct.table_instance* %17, %struct.sw_flow* %18)
  %20 = load %struct.flow_table*, %struct.flow_table** %3, align 8
  %21 = getelementptr inbounds %struct.flow_table, %struct.flow_table* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %21, align 8
  %24 = load %struct.flow_table*, %struct.flow_table** %3, align 8
  %25 = getelementptr inbounds %struct.flow_table, %struct.flow_table* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.table_instance*, %struct.table_instance** %5, align 8
  %28 = getelementptr inbounds %struct.table_instance, %struct.table_instance* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %26, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %2
  %32 = load %struct.table_instance*, %struct.table_instance** %5, align 8
  %33 = call %struct.table_instance* @table_instance_expand(%struct.table_instance* %32, i32 1)
  store %struct.table_instance* %33, %struct.table_instance** %6, align 8
  %34 = load %struct.table_instance*, %struct.table_instance** %6, align 8
  %35 = icmp ne %struct.table_instance* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = load %struct.flow_table*, %struct.flow_table** %3, align 8
  %38 = getelementptr inbounds %struct.flow_table, %struct.flow_table* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.table_instance*, %struct.table_instance** %6, align 8
  %41 = call i32 @rcu_assign_pointer(i32 %39, %struct.table_instance* %40)
  %42 = load %struct.table_instance*, %struct.table_instance** %5, align 8
  %43 = getelementptr inbounds %struct.table_instance, %struct.table_instance* %42, i32 0, i32 1
  %44 = load i32, i32* @flow_tbl_destroy_rcu_cb, align 4
  %45 = call i32 @call_rcu(i32* %43, i32 %44)
  br label %46

46:                                               ; preds = %36, %31
  br label %47

47:                                               ; preds = %46, %2
  ret void
}

declare dso_local i32 @ufid_hash(i32*) #1

declare dso_local %struct.table_instance* @ovsl_dereference(i32) #1

declare dso_local i32 @ufid_table_instance_insert(%struct.table_instance*, %struct.sw_flow*) #1

declare dso_local %struct.table_instance* @table_instance_expand(%struct.table_instance*, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.table_instance*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
