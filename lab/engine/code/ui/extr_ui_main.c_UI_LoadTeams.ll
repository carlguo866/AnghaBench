; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_LoadTeams.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_LoadTeams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"team\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @UI_LoadTeams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_LoadTeams() #0 {
  %1 = alloca [4096 x i8], align 16
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds [4096 x i8], [4096 x i8]* %1, i64 0, i64 0
  %7 = call i32 (i8*, i8*, i8*, i32, ...) bitcast (i32 (...)* @trap_FS_GetFileList to i32 (i8*, i8*, i8*, i32, ...)*)(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %6, i32 4096)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %0
  %11 = getelementptr inbounds [4096 x i8], [4096 x i8]* %1, i64 0, i64 0
  store i8* %11, i8** %2, align 8
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %27, %10
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  %17 = load i8*, i8** %2, align 8
  %18 = call i64 @strlen(i8* %17)
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %4, align 4
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 (i8*, ...) bitcast (i32 (...)* @UI_ParseTeamInfo to i32 (i8*, ...)*)(i8* %20)
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  %24 = load i8*, i8** %2, align 8
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  store i8* %26, i8** %2, align 8
  br label %27

27:                                               ; preds = %16
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %12

30:                                               ; preds = %12
  br label %31

31:                                               ; preds = %30, %0
  ret void
}

declare dso_local i32 @trap_FS_GetFileList(...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @UI_ParseTeamInfo(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
