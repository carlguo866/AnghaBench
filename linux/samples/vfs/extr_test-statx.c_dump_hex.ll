; ModuleID = '/home/carl/AnghaBench/linux/samples/vfs/extr_test-statx.c_dump_hex.c'
source_filename = "/home/carl/AnghaBench/linux/samples/vfs/extr_test-statx.c_dump_hex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%04x: \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%016llx\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i32, i32)* @dump_hex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_hex(i64* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %5, align 4
  %11 = sdiv i32 %10, 8
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = add nsw i32 %12, 7
  %14 = sdiv i32 %13, 8
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %7, align 4
  br label %16

16:                                               ; preds = %44, %3
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %47

20:                                               ; preds = %16
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = mul i32 %24, 8
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %23, %20
  %28 = load i64*, i64** %4, align 8
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  %34 = load i32, i32* %9, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = and i32 %36, 3
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %27
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %43

41:                                               ; preds = %27
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %39
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %7, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %16

47:                                               ; preds = %16
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %47
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
