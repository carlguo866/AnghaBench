; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkj4a/j4a/extr_j4a_base.c_J4A_ReleaseStringUTFChars__p.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkj4a/j4a/extr_j4a_base.c_J4A_ReleaseStringUTFChars__p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @J4A_ReleaseStringUTFChars__p(i32* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load i8**, i8*** %6, align 8
  %11 = icmp ne i8** %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %3
  br label %20

13:                                               ; preds = %9
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i8**, i8*** %6, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @J4A_ReleaseStringUTFChars(i32* %14, i32 %15, i8* %17)
  %19 = load i8**, i8*** %6, align 8
  store i8* null, i8** %19, align 8
  br label %20

20:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @J4A_ReleaseStringUTFChars(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
