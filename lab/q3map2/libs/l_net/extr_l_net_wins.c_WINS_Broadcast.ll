; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/l_net/extr_l_net_wins.c_WINS_Broadcast.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/l_net/extr_l_net_wins.c_WINS_Broadcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@net_broadcastsocket = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Attempted to use multiple broadcasts sockets\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Unable to make socket broadcast capable\0A\00", align 1
@broadcastaddr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WINS_Broadcast(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @net_broadcastsocket, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %3
  %13 = load i32, i32* @net_broadcastsocket, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = call i32 @WinError(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %12
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @WINS_MakeSocketBroadcastCapable(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = call i32 @WinPrint(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %4, align 4
  br label %31

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25, %3
  %27 = load i32, i32* %5, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @WINS_Write(i32 %27, i32* %28, i32 %29, i32* @broadcastaddr)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %26, %22
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @WinError(i8*) #1

declare dso_local i32 @WINS_MakeSocketBroadcastCapable(i32) #1

declare dso_local i32 @WinPrint(i8*) #1

declare dso_local i32 @WINS_Write(i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
