; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/session/extr_changesetfuzz.c_fuzzChangeSize.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/session/extr_changesetfuzz.c_fuzzChangeSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @fuzzChangeSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuzzChangeSize(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %26 [
    i32 0, label %13
    i32 5, label %13
    i32 1, label %15
    i32 2, label %15
    i32 3, label %17
    i32 4, label %17
  ]

13:                                               ; preds = %2, %2
  %14 = load i32*, i32** %5, align 8
  store i32 1, i32* %14, align 4
  br label %28

15:                                               ; preds = %2, %2
  %16 = load i32*, i32** %5, align 8
  store i32 9, i32* %16, align 4
  br label %28

17:                                               ; preds = %2, %2
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = call i32 @fuzzGetVarint(i32* %19, i32* %7)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 1, %21
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %22, %23
  %25 = load i32*, i32** %5, align 8
  store i32 %24, i32* %25, align 4
  br label %28

26:                                               ; preds = %2
  %27 = call i32 (...) @fuzzCorrupt()
  store i32 %27, i32* %3, align 4
  br label %30

28:                                               ; preds = %17, %15, %13
  %29 = load i32, i32* @SQLITE_OK, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @fuzzGetVarint(i32*, i32*) #1

declare dso_local i32 @fuzzCorrupt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
