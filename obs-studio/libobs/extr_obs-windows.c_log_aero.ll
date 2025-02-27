; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-windows.c_log_aero.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-windows.c_log_aero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@win_ver = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c" (Aero is always on for windows 8 and above)\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [7 x i32] [i32 100, i32 119, i32 109, i32 97, i32 112, i32 105, i32 0], align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"DwmIsCompositionEnabled\00", align 1
@LOG_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"Aero is %s%s\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Enabled\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Disabled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @log_aero to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_aero() #0 {
  %1 = alloca i32 (i32*)*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 (i32*)* null, i32 (i32*)** %1, align 8
  %5 = load i32, i32* @win_ver, align 4
  %6 = icmp sge i32 %5, 1538
  %7 = zext i1 %6 to i64
  %8 = select i1 %6, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  store i8* %8, i8** %2, align 8
  %9 = call i32 @LoadLibraryW(i8* bitcast ([7 x i32]* @.str.2 to i8*))
  store i32 %9, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %0
  br label %32

13:                                               ; preds = %0
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @GetProcAddress(i32 %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %16 = inttoptr i64 %15 to i32 (i32*)*
  store i32 (i32*)* %16, i32 (i32*)** %1, align 8
  %17 = load i32 (i32*)*, i32 (i32*)** %1, align 8
  %18 = icmp ne i32 (i32*)* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @FreeLibrary(i32 %20)
  br label %32

22:                                               ; preds = %13
  %23 = load i32 (i32*)*, i32 (i32*)** %1, align 8
  %24 = call i32 %23(i32* %4)
  %25 = load i32, i32* @LOG_INFO, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)
  %30 = load i8*, i8** %2, align 8
  %31 = call i32 @blog(i32 %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %29, i8* %30)
  br label %32

32:                                               ; preds = %22, %19, %12
  ret void
}

declare dso_local i32 @LoadLibraryW(i8*) #1

declare dso_local i64 @GetProcAddress(i32, i8*) #1

declare dso_local i32 @FreeLibrary(i32) #1

declare dso_local i32 @blog(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
