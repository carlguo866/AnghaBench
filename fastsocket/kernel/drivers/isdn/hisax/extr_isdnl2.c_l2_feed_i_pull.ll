; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_l2_feed_i_pull.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_l2_feed_i_pull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.PStack* }
%struct.PStack = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 (%struct.PStack.0*, i32, i32*)*, i32, i32 }
%struct.PStack.0 = type opaque
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i64 }

@FLG_LAPB = common dso_local global i32 0, align 4
@PH_PULL = common dso_local global i32 0, align 4
@REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @l2_feed_i_pull to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2_feed_i_pull(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.FsmInst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.PStack*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.FsmInst* %0, %struct.FsmInst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %10 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %9, i32 0, i32 0
  %11 = load %struct.PStack*, %struct.PStack** %10, align 8
  store %struct.PStack* %11, %struct.PStack** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.sk_buff*
  store %struct.sk_buff* %13, %struct.sk_buff** %8, align 8
  %14 = load i32, i32* @FLG_LAPB, align 4
  %15 = load %struct.PStack*, %struct.PStack** %7, align 8
  %16 = getelementptr inbounds %struct.PStack, %struct.PStack* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = call i64 @test_bit(i32 %14, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %3
  %21 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.PStack*, %struct.PStack** %7, align 8
  %25 = getelementptr inbounds %struct.PStack, %struct.PStack* %24, i32 0, i32 0
  %26 = call i64 @l2headersize(%struct.TYPE_6__* %25, i32 0)
  %27 = add nsw i64 %23, %26
  %28 = load %struct.PStack*, %struct.PStack** %7, align 8
  %29 = getelementptr inbounds %struct.PStack, %struct.PStack* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %27
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %32, align 4
  br label %37

37:                                               ; preds = %20, %3
  %38 = load %struct.PStack*, %struct.PStack** %7, align 8
  %39 = getelementptr inbounds %struct.PStack, %struct.PStack* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %42 = call i32 @skb_queue_tail(i32* %40, %struct.sk_buff* %41)
  %43 = load %struct.PStack*, %struct.PStack** %7, align 8
  %44 = getelementptr inbounds %struct.PStack, %struct.PStack* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32 (%struct.PStack.0*, i32, i32*)*, i32 (%struct.PStack.0*, i32, i32*)** %45, align 8
  %47 = load %struct.PStack*, %struct.PStack** %7, align 8
  %48 = bitcast %struct.PStack* %47 to %struct.PStack.0*
  %49 = load i32, i32* @PH_PULL, align 4
  %50 = load i32, i32* @REQUEST, align 4
  %51 = or i32 %49, %50
  %52 = call i32 %46(%struct.PStack.0* %48, i32 %51, i32* null)
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @l2headersize(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
