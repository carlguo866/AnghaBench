; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_wql.tab.c_cmp_keyword.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_wql.tab.c_cmp_keyword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keyword = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cmp_keyword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_keyword(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.keyword*, align 8
  %7 = alloca %struct.keyword*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.keyword*
  store %struct.keyword* %11, %struct.keyword** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.keyword*
  store %struct.keyword* %13, %struct.keyword** %7, align 8
  %14 = load %struct.keyword*, %struct.keyword** %6, align 8
  %15 = getelementptr inbounds %struct.keyword, %struct.keyword* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.keyword*, %struct.keyword** %7, align 8
  %18 = getelementptr inbounds %struct.keyword, %struct.keyword* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @min(i32 %16, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.keyword*, %struct.keyword** %6, align 8
  %22 = getelementptr inbounds %struct.keyword, %struct.keyword* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.keyword*, %struct.keyword** %7, align 8
  %25 = getelementptr inbounds %struct.keyword, %struct.keyword* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @memicmpW(i32 %23, i32 %26, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %3, align 4
  br label %52

32:                                               ; preds = %2
  %33 = load %struct.keyword*, %struct.keyword** %6, align 8
  %34 = getelementptr inbounds %struct.keyword, %struct.keyword* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.keyword*, %struct.keyword** %7, align 8
  %37 = getelementptr inbounds %struct.keyword, %struct.keyword* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 -1, i32* %3, align 4
  br label %52

41:                                               ; preds = %32
  %42 = load %struct.keyword*, %struct.keyword** %6, align 8
  %43 = getelementptr inbounds %struct.keyword, %struct.keyword* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.keyword*, %struct.keyword** %7, align 8
  %46 = getelementptr inbounds %struct.keyword, %struct.keyword* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store i32 1, i32* %3, align 4
  br label %52

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %49, %40, %30
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memicmpW(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
