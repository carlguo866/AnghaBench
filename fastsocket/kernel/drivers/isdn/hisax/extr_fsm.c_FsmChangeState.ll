; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_fsm.c_FsmChangeState.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_fsm.c_FsmChangeState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { i32, %struct.TYPE_2__*, i32 (%struct.FsmInst*, i8*, i32)*, i64 }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [15 x i8] c"ChangeState %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FsmChangeState(%struct.FsmInst* %0, i32 %1) #0 {
  %3 = alloca %struct.FsmInst*, align 8
  %4 = alloca i32, align 4
  store %struct.FsmInst* %0, %struct.FsmInst** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.FsmInst*, %struct.FsmInst** %3, align 8
  %7 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 8
  %8 = load %struct.FsmInst*, %struct.FsmInst** %3, align 8
  %9 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %2
  %13 = load %struct.FsmInst*, %struct.FsmInst** %3, align 8
  %14 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %13, i32 0, i32 2
  %15 = load i32 (%struct.FsmInst*, i8*, i32)*, i32 (%struct.FsmInst*, i8*, i32)** %14, align 8
  %16 = load %struct.FsmInst*, %struct.FsmInst** %3, align 8
  %17 = load %struct.FsmInst*, %struct.FsmInst** %3, align 8
  %18 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 %15(%struct.FsmInst* %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %12, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
