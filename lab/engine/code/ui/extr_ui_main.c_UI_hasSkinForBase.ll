; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_hasSkinForBase.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_hasSkinForBase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_QPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"models/players/%s/%s/lower_default.skin\00", align 1
@FS_READ = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"models/players/characters/%s/%s/lower_default.skin\00", align 1
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UI_hasSkinForBase(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i32, i32* @MAX_QPATH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = trunc i64 %10 to i32
  %14 = load i8*, i8** %4, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @Com_sprintf(i8* %12, i32 %13, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %14, i8* %15)
  %17 = load i32, i32* @FS_READ, align 4
  %18 = call i64 @trap_FS_FOpenFile(i8* %12, i32* null, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @qtrue, align 4
  store i32 %21, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %34

22:                                               ; preds = %2
  %23 = trunc i64 %10 to i32
  %24 = load i8*, i8** %4, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @Com_sprintf(i8* %12, i32 %23, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i8* %24, i8* %25)
  %27 = load i32, i32* @FS_READ, align 4
  %28 = call i64 @trap_FS_FOpenFile(i8* %12, i32* null, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @qtrue, align 4
  store i32 %31, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %34

32:                                               ; preds = %22
  %33 = load i32, i32* @qfalse, align 4
  store i32 %33, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %34

34:                                               ; preds = %32, %30, %20
  %35 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %35)
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i64 @trap_FS_FOpenFile(i8*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
