; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_cond.tab.c_COND_GetString.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_cond.tab.c_COND_GetString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cond_str = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"Got identifier %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i32*, %struct.cond_str*)* @COND_GetString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @COND_GetString(i32* %0, %struct.cond_str* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.cond_str*, align 8
  %5 = alloca i64*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.cond_str* %1, %struct.cond_str** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load %struct.cond_str*, %struct.cond_str** %4, align 8
  %8 = getelementptr inbounds %struct.cond_str, %struct.cond_str* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 4
  %13 = trunc i64 %12 to i32
  %14 = call i64* @cond_alloc(i32* %6, i32 %13)
  store i64* %14, i64** %5, align 8
  %15 = load i64*, i64** %5, align 8
  %16 = icmp ne i64* %15, null
  br i1 %16, label %17, label %35

17:                                               ; preds = %2
  %18 = load i64*, i64** %5, align 8
  %19 = load %struct.cond_str*, %struct.cond_str** %4, align 8
  %20 = getelementptr inbounds %struct.cond_str, %struct.cond_str* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.cond_str*, %struct.cond_str** %4, align 8
  %23 = getelementptr inbounds %struct.cond_str, %struct.cond_str* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = trunc i64 %26 to i32
  %28 = call i32 @memcpy(i64* %18, i32 %21, i32 %27)
  %29 = load i64*, i64** %5, align 8
  %30 = load %struct.cond_str*, %struct.cond_str** %4, align 8
  %31 = getelementptr inbounds %struct.cond_str, %struct.cond_str* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %29, i64 %33
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %17, %2
  %36 = load i64*, i64** %5, align 8
  %37 = call i32 @debugstr_w(i64* %36)
  %38 = call i32 @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i64*, i64** %5, align 8
  ret i64* %39
}

declare dso_local i64* @cond_alloc(i32*, i32) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
