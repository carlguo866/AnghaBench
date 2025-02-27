; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-e7000.c_e7000_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-e7000.c_e7000_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@echo = common dso_local global i64 0, align 8
@e7000_desc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"e7000 target not open.\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0D\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0D\00", align 1
@ctrl_c = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @e7000_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e7000_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [200 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* @echo, align 8
  %6 = load i32, i32* @e7000_desc, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %2
  %11 = load i8*, i8** %3, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = call i32 @puts_e7000debug(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %21

15:                                               ; preds = %10
  %16 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @sprintf(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %17)
  %19 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %20 = call i32 @puts_e7000debug(i8* %19)
  br label %21

21:                                               ; preds = %15, %13
  %22 = load i64, i64* @echo, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* @echo, align 8
  store i32 2, i32* @ctrl_c, align 4
  %24 = call i32 (...) @expect_full_prompt()
  %25 = load i64, i64* @echo, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, i64* @echo, align 8
  store i32 0, i32* @ctrl_c, align 4
  %27 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %28 = call i32 (...) @registers_changed()
  ret void
}

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @puts_e7000debug(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @expect_full_prompt(...) #1

declare dso_local i32 @printf_unfiltered(i8*) #1

declare dso_local i32 @registers_changed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
