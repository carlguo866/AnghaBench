; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_cosa.c_cosa_net_setup_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_cosa.c_cosa_net_setup_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel_data = type { i32*, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"%s: Memory squeeze, dropping packet\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.channel_data*, i32)* @cosa_net_setup_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cosa_net_setup_rx(%struct.channel_data* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.channel_data*, align 8
  %5 = alloca i32, align 4
  store %struct.channel_data* %0, %struct.channel_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.channel_data*, %struct.channel_data** %4, align 8
  %7 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = call i32 @kfree_skb(i32* %8)
  %10 = load i32, i32* %5, align 4
  %11 = call i32* @dev_alloc_skb(i32 %10)
  %12 = load %struct.channel_data*, %struct.channel_data** %4, align 8
  %13 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %12, i32 0, i32 0
  store i32* %11, i32** %13, align 8
  %14 = load %struct.channel_data*, %struct.channel_data** %4, align 8
  %15 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %2
  %19 = load %struct.channel_data*, %struct.channel_data** %4, align 8
  %20 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @pr_notice(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.channel_data*, %struct.channel_data** %4, align 8
  %24 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  store i8* null, i8** %3, align 8
  br label %40

30:                                               ; preds = %2
  %31 = load %struct.channel_data*, %struct.channel_data** %4, align 8
  %32 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = call i32 @netif_trans_update(%struct.TYPE_4__* %33)
  %35 = load %struct.channel_data*, %struct.channel_data** %4, align 8
  %36 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i8* @skb_put(i32* %37, i32 %38)
  store i8* %39, i8** %3, align 8
  br label %40

40:                                               ; preds = %30, %18
  %41 = load i8*, i8** %3, align 8
  ret i8* %41
}

declare dso_local i32 @kfree_skb(i32*) #1

declare dso_local i32* @dev_alloc_skb(i32) #1

declare dso_local i32 @pr_notice(i8*, i32) #1

declare dso_local i32 @netif_trans_update(%struct.TYPE_4__*) #1

declare dso_local i8* @skb_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
