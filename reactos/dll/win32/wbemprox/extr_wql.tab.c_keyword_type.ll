; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_wql.tab.c_keyword_type.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_wql.tab.c_keyword_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keyword = type { i32, i32, i32* }

@MAX_TOKEN_LEN = common dso_local global i32 0, align 4
@TK_ID = common dso_local global i32 0, align 4
@keyword_table = common dso_local global i32 0, align 4
@cmp_keyword = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @keyword_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keyword_type(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.keyword, align 8
  %7 = alloca %struct.keyword*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @MAX_TOKEN_LEN, align 4
  %10 = icmp ugt i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @TK_ID, align 4
  store i32 %12, i32* %3, align 4
  br label %32

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds %struct.keyword, %struct.keyword* %6, i32 0, i32 2
  store i32* %14, i32** %15, align 8
  %16 = load i32, i32* %5, align 4
  %17 = getelementptr inbounds %struct.keyword, %struct.keyword* %6, i32 0, i32 0
  store i32 %16, i32* %17, align 8
  %18 = getelementptr inbounds %struct.keyword, %struct.keyword* %6, i32 0, i32 1
  store i32 0, i32* %18, align 4
  %19 = load i32, i32* @keyword_table, align 4
  %20 = load i32, i32* @keyword_table, align 4
  %21 = call i32 @ARRAY_SIZE(i32 %20)
  %22 = load i32, i32* @cmp_keyword, align 4
  %23 = call %struct.keyword* @bsearch(%struct.keyword* %6, i32 %19, i32 %21, i32 16, i32 %22)
  store %struct.keyword* %23, %struct.keyword** %7, align 8
  %24 = load %struct.keyword*, %struct.keyword** %7, align 8
  %25 = icmp ne %struct.keyword* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %13
  %27 = load %struct.keyword*, %struct.keyword** %7, align 8
  %28 = getelementptr inbounds %struct.keyword, %struct.keyword* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %3, align 4
  br label %32

30:                                               ; preds = %13
  %31 = load i32, i32* @TK_ID, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %30, %26, %11
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.keyword* @bsearch(%struct.keyword*, i32, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
