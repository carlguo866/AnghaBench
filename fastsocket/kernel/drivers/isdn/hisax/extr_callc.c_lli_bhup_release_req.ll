; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_callc.c_lli_bhup_release_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_callc.c_lli_bhup_release_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.Channel* }
%struct.Channel = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"STAT_BHUP\00", align 1
@ISDN_STAT_BHUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @lli_bhup_release_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lli_bhup_release_req(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
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
  %12 = getelementptr inbounds %struct.Channel, %struct.Channel* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.Channel*, %struct.Channel** %7, align 8
  %18 = call i32 @link_debug(%struct.Channel* %17, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %3
  %20 = load %struct.Channel*, %struct.Channel** %7, align 8
  %21 = load i32, i32* @ISDN_STAT_BHUP, align 4
  %22 = call i32 @HL_LL(%struct.Channel* %20, i32 %21)
  %23 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @lli_rel_b_release_req(%struct.FsmInst* %23, i32 %24, i8* %25)
  ret void
}

declare dso_local i32 @link_debug(%struct.Channel*, i32, i8*) #1

declare dso_local i32 @HL_LL(%struct.Channel*, i32) #1

declare dso_local i32 @lli_rel_b_release_req(%struct.FsmInst*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
