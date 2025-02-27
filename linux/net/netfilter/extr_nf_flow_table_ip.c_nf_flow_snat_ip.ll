; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_flow_table_ip.c_nf_flow_snat_ip.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_flow_table_ip.c_nf_flow_snat_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_offload = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_8__ }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_8__ = type { i8* }
%struct.sk_buff = type { i32 }
%struct.iphdr = type { i32, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flow_offload*, %struct.sk_buff*, %struct.iphdr*, i32, i32)* @nf_flow_snat_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_flow_snat_ip(%struct.flow_offload* %0, %struct.sk_buff* %1, %struct.iphdr* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.flow_offload*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.iphdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.flow_offload* %0, %struct.flow_offload** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.iphdr* %2, %struct.iphdr** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  switch i32 %14, label %45 [
    i32 129, label %15
    i32 128, label %30
  ]

15:                                               ; preds = %5
  %16 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %17 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %16, i32 0, i32 2
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %12, align 8
  %19 = load %struct.flow_offload*, %struct.flow_offload** %7, align 8
  %20 = getelementptr inbounds %struct.flow_offload, %struct.flow_offload* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i64 128
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %13, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %29 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  br label %46

30:                                               ; preds = %5
  %31 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %32 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %12, align 8
  %34 = load %struct.flow_offload*, %struct.flow_offload** %7, align 8
  %35 = getelementptr inbounds %struct.flow_offload, %struct.flow_offload* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i64 129
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %13, align 8
  %42 = load i8*, i8** %13, align 8
  %43 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %44 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  br label %46

45:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %58

46:                                               ; preds = %30, %15
  %47 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %48 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %47, i32 0, i32 0
  %49 = load i8*, i8** %12, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = call i32 @csum_replace4(i32* %48, i8* %49, i8* %50)
  %52 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %53 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i8*, i8** %12, align 8
  %56 = load i8*, i8** %13, align 8
  %57 = call i32 @nf_flow_nat_ip_l4proto(%struct.sk_buff* %52, %struct.iphdr* %53, i32 %54, i8* %55, i8* %56)
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %46, %45
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32 @csum_replace4(i32*, i8*, i8*) #1

declare dso_local i32 @nf_flow_nat_ip_l4proto(%struct.sk_buff*, %struct.iphdr*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
