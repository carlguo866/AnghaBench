; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_chat.c_BotWeaponNameForMeansOfDeath.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_chat.c_BotWeaponNameForMeansOfDeath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"Shotgun\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Gauntlet\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Machinegun\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Grenade Launcher\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Rocket Launcher\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Plasmagun\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Railgun\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Lightning Gun\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"BFG10K\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Grapple\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"[unknown weapon]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @BotWeaponNameForMeansOfDeath(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %15 [
    i32 128, label %5
    i32 143, label %6
    i32 136, label %7
    i32 141, label %8
    i32 140, label %8
    i32 130, label %9
    i32 129, label %9
    i32 134, label %10
    i32 133, label %10
    i32 131, label %11
    i32 137, label %12
    i32 146, label %13
    i32 145, label %13
    i32 142, label %14
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %16

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %16

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %16

8:                                                ; preds = %1, %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %16

9:                                                ; preds = %1, %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %16

10:                                               ; preds = %1, %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %16

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %16

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %16

13:                                               ; preds = %1, %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %16

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %16

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %16

16:                                               ; preds = %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %17 = load i8*, i8** %2, align 8
  ret i8* %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
