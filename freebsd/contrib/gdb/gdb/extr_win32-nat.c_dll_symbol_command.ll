; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_win32-nat.c_dll_symbol_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_win32-nat.c_dll_symbol_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"dll-symbols requires a file name\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".dll\00", align 1
@OBJF_SHARED = common dso_local global i32 0, align 4
@OBJF_USERLOADED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dll_symbol_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 (...) @dont_repeat()
  %8 = load i8*, i8** %3, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %2
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @strlen(i8* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp sgt i32 %15, 4
  br i1 %16, label %17, label %37

17:                                               ; preds = %12
  %18 = load i8*, i8** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = getelementptr inbounds i8, i8* %21, i64 -4
  %23 = call i64 @strcasecmp(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %17
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 4
  %28 = add nsw i32 %27, 1
  %29 = call i64 @alloca(i32 %28)
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %6, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @strcpy(i8* %31, i8* %32)
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @strcat(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i8*, i8** %6, align 8
  store i8* %36, i8** %3, align 8
  br label %37

37:                                               ; preds = %25, %17, %12
  %38 = load i8*, i8** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @OBJF_SHARED, align 4
  %41 = load i32, i32* @OBJF_USERLOADED, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @safe_symbol_file_add(i8* %38, i32 %39, i32* null, i32 0, i32 %42)
  ret void
}

declare dso_local i32 @dont_repeat(...) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @safe_symbol_file_add(i8*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
