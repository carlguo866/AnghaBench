; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_dir.c_DirExpandInt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_dir.c_DirExpandInt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @DirExpandInt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DirExpandInt(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @Lst_Open(i32 %9)
  %11 = load i64, i64* @SUCCESS, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %18, %13
  %15 = load i32, i32* %5, align 4
  %16 = call i32* @Lst_Next(i32 %15)
  store i32* %16, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load i32*, i32** %7, align 8
  %20 = call i64 @Lst_Datum(i32* %19)
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** %8, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @DirMatchFiles(i8* %22, i32* %23, i32 %24)
  br label %14

26:                                               ; preds = %14
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @Lst_Close(i32 %27)
  br label %29

29:                                               ; preds = %26, %3
  ret void
}

declare dso_local i64 @Lst_Open(i32) #1

declare dso_local i32* @Lst_Next(i32) #1

declare dso_local i64 @Lst_Datum(i32*) #1

declare dso_local i32 @DirMatchFiles(i8*, i32*, i32) #1

declare dso_local i32 @Lst_Close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
