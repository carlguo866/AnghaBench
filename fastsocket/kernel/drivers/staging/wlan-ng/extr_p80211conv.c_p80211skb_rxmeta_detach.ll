; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/wlan-ng/extr_p80211conv.c_p80211skb_rxmeta_detach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/wlan-ng/extr_p80211conv.c_p80211skb_rxmeta_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [21 x i8] c"Called w/ null skb.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Called w/ bad frmmeta magic.\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Called w/ bad rxmeta ptr.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p80211skb_rxmeta_detach(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %6 = icmp eq %struct.sk_buff* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %31

9:                                                ; preds = %1
  %10 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %11 = call %struct.TYPE_3__* @P80211SKB_FRMMETA(%struct.sk_buff* %10)
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %4, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = icmp eq %struct.TYPE_3__* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %31

16:                                               ; preds = %9
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %3, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %31

24:                                               ; preds = %16
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @kfree(i32* %25)
  %27 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @memset(i32 %29, i32 0, i32 4)
  br label %31

31:                                               ; preds = %24, %22, %14, %7
  ret void
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local %struct.TYPE_3__* @P80211SKB_FRMMETA(%struct.sk_buff*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
