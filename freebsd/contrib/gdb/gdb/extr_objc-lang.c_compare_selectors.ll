; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_objc-lang.c_compare_selectors.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_objc-lang.c_compare_selectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"internal: compare_selectors(1)\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"internal: compare_selectors(2)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @compare_selectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_selectors(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.symbol**
  %9 = load %struct.symbol*, %struct.symbol** %8, align 8
  %10 = call i8* @SYMBOL_PRINT_NAME(%struct.symbol* %9)
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.symbol**
  %13 = load %struct.symbol*, %struct.symbol** %12, align 8
  %14 = call i8* @SYMBOL_PRINT_NAME(%struct.symbol* %13)
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i8*, i8** %6, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %2
  %21 = call i32 @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %17
  %23 = load i8*, i8** %5, align 8
  %24 = call i8* @strchr(i8* %23, i8 signext 32)
  store i8* %24, i8** %5, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i8* @strchr(i8* %25, i8 signext 32)
  store i8* %26, i8** %6, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i8*, i8** %6, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %29, %22
  %33 = call i32 @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %29
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = call i32 @specialcmp(i8* %36, i8* %38)
  ret i32 %39
}

declare dso_local i8* @SYMBOL_PRINT_NAME(%struct.symbol*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @specialcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
