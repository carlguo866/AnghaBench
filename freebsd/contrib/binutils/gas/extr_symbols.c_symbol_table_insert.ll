; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_symbols.c_symbol_table_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_symbols.c_symbol_table_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@local_hash = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"inserting \22%s\22 into symbol table failed: %s\00", align 1
@sy_hash = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @symbol_table_insert(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32 @know(i32* %4)
  %6 = load i32*, i32** %2, align 8
  %7 = call i32* @S_GET_NAME(i32* %6)
  %8 = call i32 @know(i32* %7)
  %9 = load i32*, i32** %2, align 8
  %10 = call i64 @LOCAL_SYMBOL_CHECK(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %1
  %13 = load i32, i32* @local_hash, align 4
  %14 = load i32*, i32** %2, align 8
  %15 = call i32* @S_GET_NAME(i32* %14)
  %16 = load i32*, i32** %2, align 8
  %17 = ptrtoint i32* %16 to i32
  %18 = call i8* @hash_jam(i32 %13, i32* %15, i32 %17)
  store i8* %18, i8** %3, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %12
  %22 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %23 = load i32*, i32** %2, align 8
  %24 = call i32* @S_GET_NAME(i32* %23)
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @as_fatal(i32 %22, i32* %24, i8* %25)
  br label %27

27:                                               ; preds = %21, %12
  br label %42

28:                                               ; preds = %1
  %29 = load i32, i32* @sy_hash, align 4
  %30 = load i32*, i32** %2, align 8
  %31 = call i32* @S_GET_NAME(i32* %30)
  %32 = load i32*, i32** %2, align 8
  %33 = ptrtoint i32* %32 to i32
  %34 = call i8* @hash_jam(i32 %29, i32* %31, i32 %33)
  store i8* %34, i8** %3, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %38 = load i32*, i32** %2, align 8
  %39 = call i32* @S_GET_NAME(i32* %38)
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 @as_fatal(i32 %37, i32* %39, i8* %40)
  br label %42

42:                                               ; preds = %27, %36, %28
  ret void
}

declare dso_local i32 @know(i32*) #1

declare dso_local i32* @S_GET_NAME(i32*) #1

declare dso_local i64 @LOCAL_SYMBOL_CHECK(i32*) #1

declare dso_local i8* @hash_jam(i32, i32*, i32) #1

declare dso_local i32 @as_fatal(i32, i32*, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
