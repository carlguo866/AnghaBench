; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_tcabdb.c_tclist_to_gsllist.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_tcabdb.c_tclist_to_gsllist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @tclist_to_gsllist(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %31, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @tclistnum(i32* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %34

12:                                               ; preds = %7
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @tclistval(i32* %13, i32 %14, i32* %5)
  %16 = inttoptr i64 %15 to i32*
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @int2ptr(i32 %21)
  %23 = call i32* @list_create(i32 %22)
  store i32* %23, i32** %3, align 8
  br label %30

24:                                               ; preds = %12
  %25 = load i32*, i32** %3, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @int2ptr(i32 %27)
  %29 = call i32* @list_insert_prepend(i32* %25, i32 %28)
  store i32* %29, i32** %3, align 8
  br label %30

30:                                               ; preds = %24, %19
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %7

34:                                               ; preds = %7
  %35 = load i32*, i32** %3, align 8
  ret i32* %35
}

declare dso_local i32 @tclistnum(i32*) #1

declare dso_local i64 @tclistval(i32*, i32, i32*) #1

declare dso_local i32* @list_create(i32) #1

declare dso_local i32 @int2ptr(i32) #1

declare dso_local i32* @list_insert_prepend(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
