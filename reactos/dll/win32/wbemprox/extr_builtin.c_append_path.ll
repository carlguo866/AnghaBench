; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_append_path.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_append_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i32*)* @append_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @append_path(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @strlenW(i8* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32*, i32** %7, align 8
  store i32 0, i32* %13, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @strlenW(i8* %17)
  store i32 %18, i32* %8, align 4
  br label %19

19:                                               ; preds = %16, %3
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = add nsw i32 %20, %21
  %23 = add nsw i32 %22, 2
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 1
  %26 = trunc i64 %25 to i32
  %27 = call i8* @heap_alloc(i32 %26)
  store i8* %27, i8** %10, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %19
  store i8* null, i8** %4, align 8
  br label %75

30:                                               ; preds = %19
  %31 = load i8*, i8** %5, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %53

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %33
  %37 = load i8*, i8** %10, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 1
  %42 = trunc i64 %41 to i32
  %43 = call i32 @memcpy(i8* %37, i8* %38, i32 %42)
  %44 = load i8*, i8** %10, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  store i8 92, i8* %47, align 1
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, %49
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %36, %33, %30
  %54 = load i8*, i8** %10, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 1
  %63 = trunc i64 %62 to i32
  %64 = call i32 @memcpy(i8* %58, i8* %59, i32 %63)
  %65 = load i32, i32* %9, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, %65
  store i32 %68, i32* %66, align 4
  %69 = load i8*, i8** %10, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %69, i64 %72
  store i8 0, i8* %73, align 1
  %74 = load i8*, i8** %10, align 8
  store i8* %74, i8** %4, align 8
  br label %75

75:                                               ; preds = %53, %29
  %76 = load i8*, i8** %4, align 8
  ret i8* %76
}

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i8* @heap_alloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
