; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_svcmds.c_Svcmd_ForceTeam_f.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_svcmds.c_Svcmd_ForceTeam_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@MAX_TOKEN_CHARS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Usage: forceteam <player> <team>\0A\00", align 1
@g_entities = common dso_local global i32* null, align 8
@level = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Svcmd_ForceTeam_f() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @MAX_TOKEN_CHARS, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %2, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %3, align 8
  %9 = call i32 (...) @trap_Argc()
  %10 = icmp slt i32 %9, 3
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = call i32 @G_Printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %32

13:                                               ; preds = %0
  %14 = trunc i64 %6 to i32
  %15 = call i32 @trap_Argv(i32 1, i8* %8, i32 %14)
  %16 = call i32* @ClientForString(i8* %8)
  store i32* %16, i32** %1, align 8
  %17 = load i32*, i32** %1, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  store i32 1, i32* %4, align 4
  br label %32

20:                                               ; preds = %13
  %21 = trunc i64 %6 to i32
  %22 = call i32 @trap_Argv(i32 2, i8* %8, i32 %21)
  %23 = load i32*, i32** @g_entities, align 8
  %24 = load i32*, i32** %1, align 8
  %25 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 0), align 8
  %26 = ptrtoint i32* %24 to i64
  %27 = ptrtoint i32* %25 to i64
  %28 = sub i64 %26, %27
  %29 = sdiv exact i64 %28, 4
  %30 = getelementptr inbounds i32, i32* %23, i64 %29
  %31 = call i32 @SetTeam(i32* %30, i8* %8)
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %20, %19, %11
  %33 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %33)
  %34 = load i32, i32* %4, align 4
  switch i32 %34, label %36 [
    i32 0, label %35
    i32 1, label %35
  ]

35:                                               ; preds = %32, %32
  ret void

36:                                               ; preds = %32
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trap_Argc(...) #2

declare dso_local i32 @G_Printf(i8*) #2

declare dso_local i32 @trap_Argv(i32, i8*, i32) #2

declare dso_local i32* @ClientForString(i8*) #2

declare dso_local i32 @SetTeam(i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
