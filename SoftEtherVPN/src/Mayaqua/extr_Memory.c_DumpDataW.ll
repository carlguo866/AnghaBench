; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Memory.c_DumpDataW.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Memory.c_DumpDataW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DumpDataW(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i8*, i8** %5, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %3
  store i32 0, i32* %4, align 4
  br label %31

18:                                               ; preds = %14, %11
  %19 = load i32*, i32** %7, align 8
  %20 = call i32* @FileCreateW(i32* %19)
  store i32* %20, i32** %8, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %31

24:                                               ; preds = %18
  %25 = load i32*, i32** %8, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @FileWrite(i32* %25, i8* %26, i32 %27)
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @FileClose(i32* %29)
  store i32 1, i32* %4, align 4
  br label %31

31:                                               ; preds = %24, %23, %17
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32* @FileCreateW(i32*) #1

declare dso_local i32 @FileWrite(i32*, i8*, i32) #1

declare dso_local i32 @FileClose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
