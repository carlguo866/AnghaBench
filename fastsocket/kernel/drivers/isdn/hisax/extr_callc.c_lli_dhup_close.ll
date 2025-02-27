; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_callc.c_lli_dhup_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_callc.c_lli_dhup_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.Channel* }
%struct.Channel = type { i32, i64 }

@.str = private unnamed_addr constant [10 x i8] c"STAT_DHUP\00", align 1
@ISDN_STAT_DHUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @lli_dhup_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lli_dhup_close(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.FsmInst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.Channel*, align 8
  store %struct.FsmInst* %0, %struct.FsmInst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %9 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %8, i32 0, i32 0
  %10 = load %struct.Channel*, %struct.Channel** %9, align 8
  store %struct.Channel* %10, %struct.Channel** %7, align 8
  %11 = load %struct.Channel*, %struct.Channel** %7, align 8
  %12 = getelementptr inbounds %struct.Channel, %struct.Channel* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %17 = load %struct.Channel*, %struct.Channel** %7, align 8
  %18 = call i32 @lli_leased_hup(%struct.FsmInst* %16, %struct.Channel* %17)
  br label %36

19:                                               ; preds = %3
  %20 = load %struct.Channel*, %struct.Channel** %7, align 8
  %21 = getelementptr inbounds %struct.Channel, %struct.Channel* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, 1
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.Channel*, %struct.Channel** %7, align 8
  %27 = call i32 @link_debug(%struct.Channel* %26, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %19
  %29 = load %struct.Channel*, %struct.Channel** %7, align 8
  %30 = call i32 @lli_deliver_cause(%struct.Channel* %29)
  %31 = load %struct.Channel*, %struct.Channel** %7, align 8
  %32 = load i32, i32* @ISDN_STAT_DHUP, align 4
  %33 = call i32 @HL_LL(%struct.Channel* %31, i32 %32)
  %34 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %35 = call i32 @lli_close(%struct.FsmInst* %34)
  br label %36

36:                                               ; preds = %28, %15
  ret void
}

declare dso_local i32 @lli_leased_hup(%struct.FsmInst*, %struct.Channel*) #1

declare dso_local i32 @link_debug(%struct.Channel*, i32, i8*) #1

declare dso_local i32 @lli_deliver_cause(%struct.Channel*) #1

declare dso_local i32 @HL_LL(%struct.Channel*, i32) #1

declare dso_local i32 @lli_close(%struct.FsmInst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
