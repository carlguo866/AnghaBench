; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_datapath.c_ovs_flow_cmd_msg_size.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_datapath.c_ovs_flow_cmd_msg_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw_flow_actions = type { i32 }
%struct.sw_flow_id = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sw_flow_actions*, %struct.sw_flow_id*, i32)* @ovs_flow_cmd_msg_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ovs_flow_cmd_msg_size(%struct.sw_flow_actions* %0, %struct.sw_flow_id* %1, i32 %2) #0 {
  %4 = alloca %struct.sw_flow_actions*, align 8
  %5 = alloca %struct.sw_flow_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.sw_flow_actions* %0, %struct.sw_flow_actions** %4, align 8
  store %struct.sw_flow_id* %1, %struct.sw_flow_id** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call i64 @NLMSG_ALIGN(i32 4)
  store i64 %8, i64* %7, align 8
  %9 = load %struct.sw_flow_id*, %struct.sw_flow_id** %5, align 8
  %10 = icmp ne %struct.sw_flow_id* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %3
  %12 = load %struct.sw_flow_id*, %struct.sw_flow_id** %5, align 8
  %13 = call i64 @ovs_identifier_is_ufid(%struct.sw_flow_id* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = load %struct.sw_flow_id*, %struct.sw_flow_id** %5, align 8
  %17 = getelementptr inbounds %struct.sw_flow_id, %struct.sw_flow_id* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @nla_total_size(i32 %18)
  %20 = load i64, i64* %7, align 8
  %21 = add i64 %20, %19
  store i64 %21, i64* %7, align 8
  br label %22

22:                                               ; preds = %15, %11, %3
  %23 = load %struct.sw_flow_id*, %struct.sw_flow_id** %5, align 8
  %24 = icmp ne %struct.sw_flow_id* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load %struct.sw_flow_id*, %struct.sw_flow_id** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @should_fill_key(%struct.sw_flow_id* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25, %22
  %31 = call i32 (...) @ovs_key_attr_size()
  %32 = call i64 @nla_total_size(i32 %31)
  %33 = load i64, i64* %7, align 8
  %34 = add i64 %33, %32
  store i64 %34, i64* %7, align 8
  br label %35

35:                                               ; preds = %30, %25
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @should_fill_mask(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = call i32 (...) @ovs_key_attr_size()
  %41 = call i64 @nla_total_size(i32 %40)
  %42 = load i64, i64* %7, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* %7, align 8
  br label %44

44:                                               ; preds = %39, %35
  %45 = load i32, i32* %6, align 4
  %46 = call i64 @should_fill_actions(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load %struct.sw_flow_actions*, %struct.sw_flow_actions** %4, align 8
  %50 = getelementptr inbounds %struct.sw_flow_actions, %struct.sw_flow_actions* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @nla_total_size(i32 %51)
  %53 = load i64, i64* %7, align 8
  %54 = add i64 %53, %52
  store i64 %54, i64* %7, align 8
  br label %55

55:                                               ; preds = %48, %44
  %56 = load i64, i64* %7, align 8
  %57 = call i64 @nla_total_size_64bit(i32 4)
  %58 = add i64 %56, %57
  %59 = call i64 @nla_total_size(i32 1)
  %60 = add i64 %58, %59
  %61 = call i64 @nla_total_size_64bit(i32 8)
  %62 = add i64 %60, %61
  ret i64 %62
}

declare dso_local i64 @NLMSG_ALIGN(i32) #1

declare dso_local i64 @ovs_identifier_is_ufid(%struct.sw_flow_id*) #1

declare dso_local i64 @nla_total_size(i32) #1

declare dso_local i64 @should_fill_key(%struct.sw_flow_id*, i32) #1

declare dso_local i32 @ovs_key_attr_size(...) #1

declare dso_local i64 @should_fill_mask(i32) #1

declare dso_local i64 @should_fill_actions(i32) #1

declare dso_local i64 @nla_total_size_64bit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
