; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/api/fs/extr_fs.c_filename__write_int.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/api/fs/extr_fs.c_filename__write_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_WRONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @filename__write_int(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [64 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* @O_WRONLY, align 4
  %11 = call i32 @open(i8* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %30

16:                                               ; preds = %2
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @sprintf(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %22 = call i32 @write(i32 %20, i8* %21, i32 64)
  %23 = sext i32 %22 to i64
  %24 = icmp eq i64 %23, 64
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %25, %16
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @close(i32 %27)
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %26, %14
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
