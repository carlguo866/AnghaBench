; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_layer2.c_l2_persistent_da.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_layer2.c_l2_persistent_da.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.layer2* }
%struct.layer2 = type { i64, i32, i32, i32 }
%struct.sk_buff = type { i32 }

@DL_RELEASE_IND = common dso_local global i32 0, align 4
@ST_L2_4 = common dso_local global i32 0, align 4
@MDL_STATUS_DOWN_IND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @l2_persistent_da to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2_persistent_da(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.FsmInst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.layer2*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.FsmInst* %0, %struct.FsmInst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %10 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %9, i32 0, i32 0
  %11 = load %struct.layer2*, %struct.layer2** %10, align 8
  store %struct.layer2* %11, %struct.layer2** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.sk_buff*
  store %struct.sk_buff* %13, %struct.sk_buff** %8, align 8
  %14 = load %struct.layer2*, %struct.layer2** %7, align 8
  %15 = getelementptr inbounds %struct.layer2, %struct.layer2* %14, i32 0, i32 3
  %16 = call i32 @skb_queue_purge(i32* %15)
  %17 = load %struct.layer2*, %struct.layer2** %7, align 8
  %18 = getelementptr inbounds %struct.layer2, %struct.layer2* %17, i32 0, i32 2
  %19 = call i32 @skb_queue_purge(i32* %18)
  %20 = load %struct.layer2*, %struct.layer2** %7, align 8
  %21 = call i32 @freewin(%struct.layer2* %20)
  %22 = load %struct.layer2*, %struct.layer2** %7, align 8
  %23 = call i32 @stop_t200(%struct.layer2* %22, i32 19)
  %24 = load %struct.layer2*, %struct.layer2** %7, align 8
  %25 = getelementptr inbounds %struct.layer2, %struct.layer2* %24, i32 0, i32 1
  %26 = call i32 @mISDN_FsmDelTimer(i32* %25, i32 19)
  %27 = load %struct.layer2*, %struct.layer2** %7, align 8
  %28 = load i32, i32* @DL_RELEASE_IND, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %30 = call i32 @l2up(%struct.layer2* %27, i32 %28, %struct.sk_buff* %29)
  %31 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %32 = load i32, i32* @ST_L2_4, align 4
  %33 = call i32 @mISDN_FsmChangeState(%struct.FsmInst* %31, i32 %32)
  %34 = load %struct.layer2*, %struct.layer2** %7, align 8
  %35 = getelementptr inbounds %struct.layer2, %struct.layer2* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %3
  %39 = load %struct.layer2*, %struct.layer2** %7, align 8
  %40 = load i32, i32* @MDL_STATUS_DOWN_IND, align 4
  %41 = call i32 @l2_tei(%struct.layer2* %39, i32 %40, i32 0)
  br label %42

42:                                               ; preds = %38, %3
  ret void
}

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @freewin(%struct.layer2*) #1

declare dso_local i32 @stop_t200(%struct.layer2*, i32) #1

declare dso_local i32 @mISDN_FsmDelTimer(i32*, i32) #1

declare dso_local i32 @l2up(%struct.layer2*, i32, %struct.sk_buff*) #1

declare dso_local i32 @mISDN_FsmChangeState(%struct.FsmInst*, i32) #1

declare dso_local i32 @l2_tei(%struct.layer2*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
