; ModuleID = '/home/carl/AnghaBench/stb/tests/extr_stb.c_expects.c'
source_filename = "/home/carl/AnghaBench/stb/tests/extr_stb.c_expects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @expects(i32* %0, i8* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @stb_lex(i32* %13, i8* %14, i32* %12)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp eq i32 %20, %21
  br label %23

23:                                               ; preds = %19, %5
  %24 = phi i1 [ false, %5 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = load i8*, i8** %10, align 8
  %27 = call i32 @c(i32 %25, i8* %26)
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  ret i8* %31
}

declare dso_local i32 @stb_lex(i32*, i8*, i32*) #1

declare dso_local i32 @c(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
