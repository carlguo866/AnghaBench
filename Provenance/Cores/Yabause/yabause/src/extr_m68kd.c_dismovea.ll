; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_m68kd.c_dismovea.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_m68kd.c_dismovea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"movea\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c", a%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i8*)* @dismovea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dismovea(i64 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 2, i32* %7, align 4
  %8 = load i8*, i8** %6, align 8
  %9 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %10 = load i8*, i8** %6, align 8
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds i8, i8* %10, i64 %11
  store i8* %12, i8** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = ashr i32 %13, 12
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @setsizestr(i32 %14, i8* %15)
  %17 = load i8*, i8** %6, align 8
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  store i8* %19, i8** %6, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %20, %22
  %24 = load i32, i32* %5, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @seteafieldstr(i64 %23, i32 %24, i32* %7, i8* %25)
  %27 = load i8*, i8** %6, align 8
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  store i8* %29, i8** %6, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %5, align 4
  %32 = ashr i32 %31, 9
  %33 = and i32 %32, 7
  %34 = call i32 (i8*, i8*, ...) @sprintf(i8* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i8*, i8** %6, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8* %37, i8** %6, align 8
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @setsizestr(i32, i8*) #1

declare dso_local i32 @seteafieldstr(i64, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
