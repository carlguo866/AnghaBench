; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_gzip.c_print_verbage.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_gzip.c_print_verbage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s:%s  \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\09\09\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c" -- replaced with %s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32)* @print_verbage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_verbage(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %4
  %12 = load i32, i32* @stderr, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = icmp slt i32 %15, 7
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %13, i8* %18)
  br label %20

20:                                               ; preds = %11, %4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @stderr, align 4
  %24 = call i32 @print_ratio(i32 %21, i32 %22, i32 %23)
  %25 = load i8*, i8** %6, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load i32, i32* @stderr, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 (i32, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %27, %20
  %32 = load i32, i32* @stderr, align 4
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %34 = load i32, i32* @stderr, align 4
  %35 = call i32 @fflush(i32 %34)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @print_ratio(i32, i32, i32) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
