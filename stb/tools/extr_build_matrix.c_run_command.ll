; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_build_matrix.c_run_command.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_build_matrix.c_run_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"%s && %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @run_command(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [4096 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = icmp ne i8 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %13 = load i8*, i8** %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @sprintf(i8* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %13, i8* %14)
  %16 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %17 = call i64 @system(i8* %16)
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %3, align 4
  br label %25

20:                                               ; preds = %2
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @system(i8* %21)
  %23 = icmp eq i64 %22, 0
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %20, %11
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i64 @system(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
