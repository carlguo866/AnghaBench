; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_disk.c_ftruncate_growable.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_disk.c_ftruncate_growable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ftruncate_growable.zero = internal constant i8 0, align 1
@SEEK_CUR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"lseek\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"ftruncate\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ftruncate_growable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftruncate_growable(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @ftruncate(i32 %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %51

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @SEEK_CUR, align 4
  %17 = call i32 @lseek(i32 %15, i32 0, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %51

21:                                               ; preds = %14
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @SEEK_SET, align 4
  %25 = call i32 @lseek(i32 %22, i32 %23, i32 %24)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %51

29:                                               ; preds = %21
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @write(i32 %30, i8* @ftruncate_growable.zero, i32 1)
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %51

35:                                               ; preds = %29
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @ftruncate(i32 %36, i32 %37)
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %51

42:                                               ; preds = %35
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @SEEK_SET, align 4
  %46 = call i32 @lseek(i32 %43, i32 %44, i32 %45)
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %51

50:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %48, %40, %33, %27, %19, %12
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @ftruncate(i32, i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @write(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
