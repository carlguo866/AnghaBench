; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_spawn.c_G_SpawnString.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_spawn.c_G_SpawnString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8***, i32 }

@level = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@qtrue = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @G_SpawnString(i8* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 2), align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i8*, i8** %6, align 8
  %13 = load i8**, i8*** %7, align 8
  store i8* %12, i8** %13, align 8
  br label %14

14:                                               ; preds = %11, %3
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %41, %14
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 0), align 8
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %44

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8
  %21 = load i8***, i8**** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 1), align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8**, i8*** %21, i64 %23
  %25 = load i8**, i8*** %24, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @Q_stricmp(i8* %20, i8* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %19
  %31 = load i8***, i8**** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 1), align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8**, i8*** %31, i64 %33
  %35 = load i8**, i8*** %34, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 1
  %37 = load i8*, i8** %36, align 8
  %38 = load i8**, i8*** %7, align 8
  store i8* %37, i8** %38, align 8
  %39 = load i32, i32* @qtrue, align 4
  store i32 %39, i32* %4, align 4
  br label %48

40:                                               ; preds = %19
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %15

44:                                               ; preds = %15
  %45 = load i8*, i8** %6, align 8
  %46 = load i8**, i8*** %7, align 8
  store i8* %45, i8** %46, align 8
  %47 = load i32, i32* @qfalse, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %44, %30
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @Q_stricmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
