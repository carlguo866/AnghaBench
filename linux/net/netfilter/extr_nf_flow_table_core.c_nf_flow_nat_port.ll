; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_flow_table_core.c_nf_flow_nat_port.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_flow_table_core.c_nf_flow_nat_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

@NF_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, i32, i32)* @nf_flow_nat_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_flow_nat_port(%struct.sk_buff* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %9, align 4
  switch i32 %12, label %33 [
    i32 129, label %13
    i32 128, label %23
  ]

13:                                               ; preds = %5
  %14 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %11, align 4
  %18 = call i32 @nf_flow_nat_port_tcp(%struct.sk_buff* %14, i32 %15, i32 %16, i32 %17)
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* @NF_DROP, align 4
  store i32 %21, i32* %6, align 4
  br label %34

22:                                               ; preds = %13
  br label %33

23:                                               ; preds = %5
  %24 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @nf_flow_nat_port_udp(%struct.sk_buff* %24, i32 %25, i32 %26, i32 %27)
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @NF_DROP, align 4
  store i32 %31, i32* %6, align 4
  br label %34

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %5, %32, %22
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %33, %30, %20
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local i32 @nf_flow_nat_port_tcp(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @nf_flow_nat_port_udp(%struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
