; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_execute.c_rename_process_from_path.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_execute.c_rename_process_from_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"(...)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @rename_process_from_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rename_process_from_path(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [11 x i8], align 1
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i8* @basename(i8* %6)
  store i8* %7, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @isempty(i8* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @rename_process(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %39

13:                                               ; preds = %1
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @strlen(i8* %14)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp ugt i64 %16, 8
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i8*, i8** %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = getelementptr inbounds i8, i8* %21, i64 -8
  store i8* %22, i8** %4, align 8
  store i64 8, i64* %5, align 8
  br label %23

23:                                               ; preds = %18, %13
  %24 = getelementptr inbounds [11 x i8], [11 x i8]* %3, i64 0, i64 0
  store i8 40, i8* %24, align 1
  %25 = getelementptr inbounds [11 x i8], [11 x i8]* %3, i64 0, i64 0
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = load i8*, i8** %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @memcpy(i8* %26, i8* %27, i64 %28)
  %30 = load i64, i64* %5, align 8
  %31 = add i64 1, %30
  %32 = getelementptr inbounds [11 x i8], [11 x i8]* %3, i64 0, i64 %31
  store i8 41, i8* %32, align 1
  %33 = load i64, i64* %5, align 8
  %34 = add i64 1, %33
  %35 = add i64 %34, 1
  %36 = getelementptr inbounds [11 x i8], [11 x i8]* %3, i64 0, i64 %35
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds [11 x i8], [11 x i8]* %3, i64 0, i64 0
  %38 = call i32 @rename_process(i8* %37)
  br label %39

39:                                               ; preds = %23, %11
  ret void
}

declare dso_local i8* @basename(i8*) #1

declare dso_local i64 @isempty(i8*) #1

declare dso_local i32 @rename_process(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
