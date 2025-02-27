; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cvar.c_Cvar_SetSafe.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cvar.c_Cvar_SetSafe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CVAR_NONEXISTENT = common dso_local global i32 0, align 4
@CVAR_PROTECTED = common dso_local global i32 0, align 4
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Restricted source tried to set \22%s\22 to \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Restricted source tried to modify \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cvar_SetSafe(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @Cvar_Flags(i8* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @CVAR_NONEXISTENT, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %29

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @CVAR_PROTECTED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %11
  %17 = load i8*, i8** %4, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i32, i32* @ERR_DROP, align 4
  %21 = load i8*, i8** %3, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 (i32, i8*, i8*, ...) @Com_Error(i32 %20, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %22)
  br label %28

24:                                               ; preds = %16
  %25 = load i32, i32* @ERR_DROP, align 4
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 (i32, i8*, i8*, ...) @Com_Error(i32 %25, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %24, %19
  br label %33

29:                                               ; preds = %11, %2
  %30 = load i8*, i8** %3, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @Cvar_Set(i8* %30, i8* %31)
  br label %33

33:                                               ; preds = %29, %28
  ret void
}

declare dso_local i32 @Cvar_Flags(i8*) #1

declare dso_local i32 @Com_Error(i32, i8*, i8*, ...) #1

declare dso_local i32 @Cvar_Set(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
