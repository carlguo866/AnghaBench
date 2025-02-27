; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_flow.c_flow_key_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_flow.c_flow_key_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.flow_keys = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.flow_keys*)* @flow_key_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flow_key_get(%struct.sk_buff* %0, i32 %1, %struct.flow_keys* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.flow_keys*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.flow_keys* %2, %struct.flow_keys** %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %72 [
    i32 129, label %9
    i32 145, label %13
    i32 136, label %17
    i32 134, label %21
    i32 135, label %25
    i32 144, label %29
    i32 137, label %32
    i32 143, label %35
    i32 142, label %38
    i32 138, label %41
    i32 141, label %45
    i32 139, label %49
    i32 140, label %53
    i32 133, label %57
    i32 130, label %60
    i32 131, label %63
    i32 128, label %66
    i32 132, label %69
  ]

9:                                                ; preds = %3
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = load %struct.flow_keys*, %struct.flow_keys** %7, align 8
  %12 = call i32 @flow_get_src(%struct.sk_buff* %10, %struct.flow_keys* %11)
  store i32 %12, i32* %4, align 4
  br label %74

13:                                               ; preds = %3
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = load %struct.flow_keys*, %struct.flow_keys** %7, align 8
  %16 = call i32 @flow_get_dst(%struct.sk_buff* %14, %struct.flow_keys* %15)
  store i32 %16, i32* %4, align 4
  br label %74

17:                                               ; preds = %3
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = load %struct.flow_keys*, %struct.flow_keys** %7, align 8
  %20 = call i32 @flow_get_proto(%struct.sk_buff* %18, %struct.flow_keys* %19)
  store i32 %20, i32* %4, align 4
  br label %74

21:                                               ; preds = %3
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = load %struct.flow_keys*, %struct.flow_keys** %7, align 8
  %24 = call i32 @flow_get_proto_src(%struct.sk_buff* %22, %struct.flow_keys* %23)
  store i32 %24, i32* %4, align 4
  br label %74

25:                                               ; preds = %3
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = load %struct.flow_keys*, %struct.flow_keys** %7, align 8
  %28 = call i32 @flow_get_proto_dst(%struct.sk_buff* %26, %struct.flow_keys* %27)
  store i32 %28, i32* %4, align 4
  br label %74

29:                                               ; preds = %3
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = call i32 @flow_get_iif(%struct.sk_buff* %30)
  store i32 %31, i32* %4, align 4
  br label %74

32:                                               ; preds = %3
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = call i32 @flow_get_priority(%struct.sk_buff* %33)
  store i32 %34, i32* %4, align 4
  br label %74

35:                                               ; preds = %3
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = call i32 @flow_get_mark(%struct.sk_buff* %36)
  store i32 %37, i32* %4, align 4
  br label %74

38:                                               ; preds = %3
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = call i32 @flow_get_nfct(%struct.sk_buff* %39)
  store i32 %40, i32* %4, align 4
  br label %74

41:                                               ; preds = %3
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = load %struct.flow_keys*, %struct.flow_keys** %7, align 8
  %44 = call i32 @flow_get_nfct_src(%struct.sk_buff* %42, %struct.flow_keys* %43)
  store i32 %44, i32* %4, align 4
  br label %74

45:                                               ; preds = %3
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = load %struct.flow_keys*, %struct.flow_keys** %7, align 8
  %48 = call i32 @flow_get_nfct_dst(%struct.sk_buff* %46, %struct.flow_keys* %47)
  store i32 %48, i32* %4, align 4
  br label %74

49:                                               ; preds = %3
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = load %struct.flow_keys*, %struct.flow_keys** %7, align 8
  %52 = call i32 @flow_get_nfct_proto_src(%struct.sk_buff* %50, %struct.flow_keys* %51)
  store i32 %52, i32* %4, align 4
  br label %74

53:                                               ; preds = %3
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = load %struct.flow_keys*, %struct.flow_keys** %7, align 8
  %56 = call i32 @flow_get_nfct_proto_dst(%struct.sk_buff* %54, %struct.flow_keys* %55)
  store i32 %56, i32* %4, align 4
  br label %74

57:                                               ; preds = %3
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = call i32 @flow_get_rtclassid(%struct.sk_buff* %58)
  store i32 %59, i32* %4, align 4
  br label %74

60:                                               ; preds = %3
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = call i32 @flow_get_skuid(%struct.sk_buff* %61)
  store i32 %62, i32* %4, align 4
  br label %74

63:                                               ; preds = %3
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %65 = call i32 @flow_get_skgid(%struct.sk_buff* %64)
  store i32 %65, i32* %4, align 4
  br label %74

66:                                               ; preds = %3
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = call i32 @flow_get_vlan_tag(%struct.sk_buff* %67)
  store i32 %68, i32* %4, align 4
  br label %74

69:                                               ; preds = %3
  %70 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %71 = call i32 @flow_get_rxhash(%struct.sk_buff* %70)
  store i32 %71, i32* %4, align 4
  br label %74

72:                                               ; preds = %3
  %73 = call i32 @WARN_ON(i32 1)
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %72, %69, %66, %63, %60, %57, %53, %49, %45, %41, %38, %35, %32, %29, %25, %21, %17, %13, %9
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @flow_get_src(%struct.sk_buff*, %struct.flow_keys*) #1

declare dso_local i32 @flow_get_dst(%struct.sk_buff*, %struct.flow_keys*) #1

declare dso_local i32 @flow_get_proto(%struct.sk_buff*, %struct.flow_keys*) #1

declare dso_local i32 @flow_get_proto_src(%struct.sk_buff*, %struct.flow_keys*) #1

declare dso_local i32 @flow_get_proto_dst(%struct.sk_buff*, %struct.flow_keys*) #1

declare dso_local i32 @flow_get_iif(%struct.sk_buff*) #1

declare dso_local i32 @flow_get_priority(%struct.sk_buff*) #1

declare dso_local i32 @flow_get_mark(%struct.sk_buff*) #1

declare dso_local i32 @flow_get_nfct(%struct.sk_buff*) #1

declare dso_local i32 @flow_get_nfct_src(%struct.sk_buff*, %struct.flow_keys*) #1

declare dso_local i32 @flow_get_nfct_dst(%struct.sk_buff*, %struct.flow_keys*) #1

declare dso_local i32 @flow_get_nfct_proto_src(%struct.sk_buff*, %struct.flow_keys*) #1

declare dso_local i32 @flow_get_nfct_proto_dst(%struct.sk_buff*, %struct.flow_keys*) #1

declare dso_local i32 @flow_get_rtclassid(%struct.sk_buff*) #1

declare dso_local i32 @flow_get_skuid(%struct.sk_buff*) #1

declare dso_local i32 @flow_get_skgid(%struct.sk_buff*) #1

declare dso_local i32 @flow_get_vlan_tag(%struct.sk_buff*) #1

declare dso_local i32 @flow_get_rxhash(%struct.sk_buff*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
