; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl3.c_no_l3_proto.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl3.c_no_l3_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PStack = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"L3\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"no D protocol\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.PStack*, i32, i8*)* @no_l3_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @no_l3_proto(%struct.PStack* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.PStack*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.PStack* %0, %struct.PStack** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.sk_buff*
  store %struct.sk_buff* %9, %struct.sk_buff** %7, align 8
  %10 = load %struct.PStack*, %struct.PStack** %4, align 8
  %11 = getelementptr inbounds %struct.PStack, %struct.PStack* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @HiSax_putstatus(i32 %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %15 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %19 = call i32 @dev_kfree_skb(%struct.sk_buff* %18)
  br label %20

20:                                               ; preds = %17, %3
  ret void
}

declare dso_local i32 @HiSax_putstatus(i32, i8*, i8*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
